import dis



def takingUserInput (inn):
    print ("hello " + inn + " there!")




#dissassemble this function
dis.dis(takingUserInput)

#print a human-readable bytecode
bytecode = dis.code_info(takingUserInput)
print(bytecode)

#print the bytecode metadata
bytecode = dis.Bytecode(takingUserInput)
print(bytecode)

#print the details of every instruction in the human-readable bytecode and its corresponding raw bytecode
for i in bytecode:
    print(i)



print("\n\n\n\n\n")


#print the raw bytecode in non-readable format
code = takingUserInput.__code__.co_code
print(code)

print("\n\n\n\n\n")


#show_code is the same as code_info
lol = dis.show_code(takingUserInput)
print(lol)