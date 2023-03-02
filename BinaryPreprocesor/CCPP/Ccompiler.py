import os

sub = ["g++"]
file_names = ["testCPP2.cpp", "testC.h", "testC.cpp"]



gcomp = "g++"
for i in file_names:
    gcomp = gcomp + " " + i

gcomp = gcomp + " -c"
print(gcomp)
os.system("cmd")
os.system("")


'''

substring = sub+file_names
substring = substring+["-c"]
print(substring)
test = subprocess.Popen(["g++", "--version"], stdout=subprocess.PIPE, shell=True)
output = test.communicate()
print(output)




proc = subprocess.Popen('cmd.exe', stdin = subprocess.PIPE, stdout = subprocess.PIPE)
stdout, stderr = proc.communicate('dir c:\\')


'''