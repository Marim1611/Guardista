#

test_str = open("D:/ClassWork/GP/testOUT.ll")
contents = test_str.read()
with open("D:/ClassWork/GP/Result2.txt", "w") as f:
    contents = contents.replace('\n','\\n')
    contents = contents.replace('\t','\\t')
    f.write(contents)
f.close()

