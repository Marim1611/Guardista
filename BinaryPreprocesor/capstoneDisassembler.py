from capstone import *


CODE = b"\x55\x48\x8b\x05\xb8\x13\x00\x00"

f = open('dist/testpy2.exe','rb') 
binaryCode = f.read()
f.close()

f = open ("dist/binaryTxt.txt", 'w')
f.write(str(binaryCode))
f.close()





md = Cs(CS_ARCH_X86, CS_MODE_64)
md.detail = True

f = open("dist/disassembled_assembly.txt", 'w')
for i in md.disasm(binaryCode,0x140000000):
    f.write("0x%x:\t%s\t%s\n" %(i.address, i.mnemonic, i.op_str))
f.close()


#Command:
#python capstoneDisassembler.py
