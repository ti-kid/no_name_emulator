#!/usr/bin/env python3
import sys

if len(sys.argv) != 2:
    print("usage: bin2c.py <file.bin>")
    sys.exit(1)

path = sys.argv[1]
data = open(path, "rb").read()

# Convert each byte to 0xXX
hex_bytes = ", ".join(f"0x{b:02X}" for b in data)

print(f"uint8_t test_program[] = {{ {hex_bytes} }};")

