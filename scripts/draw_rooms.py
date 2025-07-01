import romfile, subprocess, tempfile

def extract_structs(addr, n):
    structs = []
    for i in range(n):
        struct = []
        rom.seek(addr+i*2)
        rom.seek((addr&0xFF0000)+rom.read_int(2))

        while True:
            n = rom.read_int(1)
            if n == 0xFF:
                break
            struct.append([n >> 4] + [rom.read_int(1) for _ in range(0x10 if n & 0xF == 0 else n & 0xF)])

        structs.append(struct)

    return structs

def draw_room(addr, structs):
    rom.seek(addr)
    room_pal = rom.read_int(1)

    tilemap = [0xFF]*0xF0
    attrs = [room_pal]*0x100
    enemy_data = []

    while True:
        pos = rom.read_int(1)
        if pos == 0xFF:
            enemy_data.append(0xFF)
            break
        elif pos == 0xFE:
            continue
        elif pos == 0xFD:
            while True:
                control = rom.read_int(1)
                enemy_data.append(control)
                if control == 0xFF:
                    break

                num_params = (0, 2, 1, 0, 1, 0, 0, 2)[control & 0xF]
                enemy_data += [rom.read_int(1) for _ in range(num_params)]
            break
        x_pos = pos & 0xF
        y_pos = pos >> 4
        struct_i = rom.read_int(1)
        pal = rom.read_int(1)

        for row in structs[struct_i]:
            if y_pos >= 0xF:
                break
            x = x_pos + row[0]
            if x < 0x10:
                for macro_i in row[1:]:
                    tilemap[x+y_pos*0x10] = macro_i
                    if pal != room_pal:
                        attrs[x+y_pos*0x10] = pal
                    x += 1
                    if x >= 0x10:
                        break
            y_pos += 1

    converted_attrs = []
    for y in range(0, 0x10, 2):
        for x in range(0, 0x10, 2):
            c = x+y*0x10
            converted_attrs.append(attrs[c]|(attrs[c+1]<<2)|(attrs[c+0x10]<<4)|(attrs[c+0x11]<<6))

    return bytearray(tilemap+converted_attrs+enemy_data)

rom = romfile.ROMFile('M1.nes')

area_data = [
    ('brinstar', 0x10000, 0x32, 0x2F),
    ('norfair', 0x20000, 0x31, 0x2E),
    ('tourian', 0x30000, 0x20, 0x15),
    ('kraid', 0x40000, 0x27, 0x25),
    ('ridley', 0x50000, 0x1D, 0x2A),
]

for area_name, bank, num_structs, num_rooms in area_data:
    rom.seek(bank+0x959C)
    structs = extract_structs(bank+rom.read_int(2), num_structs)

    rom.seek(bank+0x959A)
    room_ptr_tbl = bank+rom.read_int(2)

    for i in range(num_rooms):
        rom.seek(room_ptr_tbl+i*2)
        fp = tempfile.NamedTemporaryFile(delete_on_close=False)
        fp.write(draw_room(bank+rom.read_int(2), structs))
        fp.close()
        subprocess.run(f"./lzsa -f 1 -r {fp.name} SRC/{area_name}/rooms/{i:02X}.bin", shell=True)

    print('RmPtrTbl:')
    for i in range(num_rooms):
        print(f'    .word Room{i:02X}')
    print()
    for i in range(num_rooms):
        print(f'Room{i:02X}: .incbin "{area_name}/rooms/{i:02X}.bin"')
    print()
