import pyvex
import angr
def disasmble(self,bb):
        insn = []
        buff = self._header.read_bytes(self._header.read_addr(bb.addr-self._header.base_addr))
        addr = bb.addr
        arch = self._header.arch
        irsb = pyvex.IRSB(buff,addr,arch,num_bytes=400,bytes_offset=0,traceflags=0)
        bytestring = buff[:irsb.size]
        cs = arch.capstone
        for cs_insn in cs.disasm(bytestring,addr):
            insn.append(cs_insn)
            #print hex(cs_insn.address).replace("L",''), cs_insn.mnemonic, cs_insn.op_str

        return irsb, insn



proj = angr.Project('dist/testpy2.exe')
print("all objects : ")
print(proj.loader.all_objects)
print("Main object : ")
mainObj = proj.loader.main_object
print(mainObj)

print("\nCode Segments : \n")
print(mainObj.segments)


print("\nCode Sections : \n")
print(mainObj.sections)

print("\n\n\n")


############### Just an entry state to the entire .exe file
entryState = proj.factory.entry_state()
assert entryState.addr == proj.entry
assert entryState.history.block_count == 0
print(entryState.callstack)
new_states = proj.factory.successors(entryState).flat_successors
print("The path has", len(new_states), "successors!")
print(new_states)






irsb = proj.factory.block(mainObj.entry).vex
irsb.pp()

state = proj.factory.call_state(mainObj.entry)
print(state)
print(type(state))
new_states = proj.factory.successors(entryState).flat_successors
print("The path has", len(new_states), "successors!")
print(new_states)


hex_add = int(irsb.next.__str__(), 16)
#for stmts in irsb.statements: stmts.pp()

while(hex_add != mainObj.max_addr):
    
    hex_add = int(irsb.next.__str__(), 16)
    irsb = proj.factory.block(hex_add).vex
    irsb.pp()
    state = proj.factory.call_state(hex_add)
    print(state.callstack)
    new_states = proj.factory.successors(entryState).flat_successors
    print("The path has", len(new_states), "successors!")
    print(new_states)
    




''' JUST SOME INSIGHTS
Ijk_Boring	A normal jump to an address.
Ijk_Call	A call to an address.
Ijk_Ret	A return.
Ijk_Sig*	Various signals.
Ijk_Sys*	System calls.
Ijk_NoHook	A jump out of an angr hook.
'''




















'''
for stmt in irsb.statements:
    if isinstance(stmt, pyvex.IRStmt.Store):
        print("Data:")
        stmt.data.pp()
        print("")
        print("Type:",)
        print(stmt.data.result_type)
        print("")

# pretty-print the condition and jump target of every conditional exit from the basic block
for stmt in irsb.statements:
    if isinstance(stmt, pyvex.IRStmt.Exit):
        print("Condition:",)
        stmt.guard.pp()
        print("")
        print("Target:",)
        stmt.dst.pp()
        print("")

# these are the types of every temp in the IRSB
print(irsb.tyenv.types)

# here is one way to get the type of temp 0
print(irsb.tyenv.types[0])

'''