import hashlib


'''
    Hello, this script defines the full implementation of MOSS algorithm from scratch
    it is called inside the localizer module

    Here you can find some useful hash functions, the Winnowing algorithm and the diffing function

    MOSS is a similarity measure of software,
    the requirements for such similarity measure is to be invariant to:
    1) spaces
    2) number of lines
    3) reordering
    4) replacement
    5) local update and delete
    6) insertion of dummy code (to a certain extend)

    MOSS is one of the complex similarity algorithms due to the presence of the hash function and the nested loops used in diffing
    so it must be used with care, should be used between two suspect codes only, not between any 2 arbitrary codes we 5alas

    enjoy :)
'''








# just for testing
String1 = "hello i am aymanhello i am aymanhello i am aymanhello i am aymanhello i am aymanhello i am ayman"
String3 = "am hello i aymanhello i am aymanhello i am aymanhello i am aymanhello i am aymanhello i am ayman"
#String3 = "i am ayman helloi am ayman helloi am ayman helloi am ayman helloi am ayman helloi am ayman hello"
String2 = '''%255 = getelementptr inbounds %"`anonymous-namespace'::write_result", %"`anonymous-namespace'::write_result"* %result_-96, i32 0, i32 0, !insn.addr !5863
  %256 = load i32, i32* %255, align 8, !insn.addr !5863
  %257 = inttoptr i32 %fh to i32*, !insn.addr !5863
  store i32 %256, i32* %257, align 4, !insn.addr !5863
'''


def hash_string(s):
    '''
        Simplet hash function for strings
    '''
    hash_value = 0
    for i in range(len(s)):
        hash_value += ord(s[i]) * (31 ** (len(s) - i - 1))
    return hash_value



def ComputeHashes(String2, windowSize=5, hashFunc=hashlib.sha1, PrintStats=False):
    '''
        This function takes a window of the input string, computes the hash of each window
        returns a list of hashes
    '''
    windows = []
    hexflag = True
    for i in range(len(String2)- windowSize +1):
        windows.append(String2[i:i+windowSize])

    if(PrintStats):
        print(f"sliding Windows on the originalString: \n")
        print(windows)
    listOfHashes = []
    fl = -1
    for window in windows:
        if(hashFunc in (hashlib.sha1, hashlib.sha512, hashlib.sha384, hashlib.blake2b, hashlib.blake2s, hashlib.md5, hashlib.sha224, hashlib.pbkdf2_hmac)):
            fl = 1
            hexflag=True
            try:
                listOfHashes.append(hashFunc(window.encode()))
            except:
                print(f"ERROR IN HASH FUNCTION {hashFunc}")
                exit()
        else:
            fl = 0
            hexflag=False
            try:
                listOfHashes.append(hashFunc(window))
            except:
                print(f"ERROR IN HASH FUNCTION {hashFunc}")
                exit()
        

    if(fl and PrintStats):
        print(f"\n\nHex of hashes of each window in order: ")
        print(i.hexdigest() for i in listOfHashes)
    elif(not fl and PrintStats):
        print(f"\n\nHex of hashes of each window in order: ")
        print(listOfHashes)

    return listOfHashes, hexflag


def SplitHashesToWindows(HashesWindowSize, ListOfHashes,hexflag):
    '''
        Just a helper function for the next function
        it takes a list of hashes and splits them into windows to extract the signature of each hash window in the following function
    '''


    #split hashes into windows

    windows = []


    hexListOfHashes = []
    if(hexflag):
        for i in ListOfHashes:
            hexListOfHashes.append(i.hexdigest())
    else:
        for i in ListOfHashes:
            hexListOfHashes.append(i)
    
    ListOfHashes = hexListOfHashes
    for i in range(len(ListOfHashes)-HashesWindowSize+1):
        localDict = dict()
        insertedList = ListOfHashes[i: i+HashesWindowSize]
        for j in insertedList:
            localDict[j] = i
        windows.append(localDict)
    return windows


def getOneLargeDict_FromListOfDicts(windows, PrintStats=False):
    retDict = []
    for i in windows:
        for k,v in i.items():
            retDict.append((k,v))
    if(PrintStats):
        print(f"all hashes, NOTE: each value in each pair represents the order of the window")
        print(retDict)
    return retDict



def CalculateSignature(p, windows, hexflag,PrintStats=False):
    '''
        This function selects the signature of each window from the passed list of windows
        in MOSS, there are a lot of selection methods
        some implementations selects the largest non-recurrent hash in this current window
        some implementations selects the smallest
        others select the median

        in our implementation, we select the smallest non-recurrent hash in the window
        because the hash function has a very big upper limit (infinity), while the lower limit is defined by a number
    '''
    signature = []
    for i in range(len(windows)):
        subList = windows[i: i+p].copy()
        if hexflag:
            candidate_choice = min(subList, key=lambda a: int(a[0],base=16))
        else:
            candidate_choice = min(subList, key=lambda a: int(a[0]))
        if(not(candidate_choice in signature)):
            signature.append(candidate_choice)

    if(PrintStats):
        print(f"the Chosen Signature: \n")
        print(signature)
    return [i[0] for i in signature]
    


#select hashes for each window


def Winnow (Stringy, K, windowSize, p, hashFunc=hashlib.sha1, printStats=False):
    '''
        As simple as possible
        it computes the hashes of each window in a string
        then selects the signature of each window
        then combines all those signatures in a list
        returns this list as the signature of the entire document/string
    '''
    ListOfHashes,hexflag = ComputeHashes(Stringy, K, hashFunc, printStats)
    windows = SplitHashesToWindows(windowSize, ListOfHashes ,hexflag)
    windows = getOneLargeDict_FromListOfDicts(windows, printStats)
    return CalculateSignature(p,windows,hexflag, printStats)




def diff (stringSRC, stringOTHER, K, WindowSize, P, PrintStats = False):
    '''
        The diffing algorithm, differentiates between two suspect functions for similarity
        it extracts the document signature for each string
        then defines a local window of size WindowSize
        then calculates the hits and misses in each window with the corresponding window in the other string

        we have 2 similarity measure, you can refer to them in the book for reasons why we chose both
    '''

    sig1 = Winnow(stringSRC, K, WindowSize, P, hash_string, PrintStats)
    sig2 = Winnow(stringOTHER, K, WindowSize, P, hash_string, PrintStats)

    sig1 = sorted(sig1)
    sig2 = sorted(sig2)

    hits = 0
    misses = 0
    minLeng = min(len(sig1), len(sig2))
    sig1Smaller = (minLeng == len(sig1))        #1 if sig1 is smaller, 0 if sig2 is smaller
    for i in range(minLeng):
        if sig1Smaller and sig1[i] in sig2:
            hits += 1
            sig2.remove(sig1[i])
        elif (not sig1Smaller) and sig2[i] in sig1:
            hits += 1
            sig1.remove(sig2[i])
        else:
            misses += 1
    

    if(sig1Smaller):
        misses += len(sig2)
    else:
        misses += len(sig1)

    Accuracy_Metric1 = hits/(hits+misses)

    misses2 = abs(hits-len(sig2))
    
    Accuracy_Metric2 = hits/(hits+misses2)

    return Accuracy_Metric1, Accuracy_Metric2,hits, misses, misses2






def diffSignatures(sig1, sig2):
    '''
        Just a helper function, to diff two signatures instead of two strings
        it is used when we precomputed all the representatives signatures to optimize things further
    '''
    sig1 = sorted(sig1)
    sig2 = sorted(sig2)
    hits = 0
    misses = 0
    minLeng = min(len(sig1), len(sig2))
    sig1Smaller = (minLeng == len(sig1))        #1 if sig1 is smaller, 0 if sig2 is smaller
    for i in range(minLeng):
        if sig1Smaller and sig1[i] in sig2:
            hits += 1
            sig2.remove(sig1[i])
        elif (not sig1Smaller) and sig2[i] in sig1:
            hits += 1
            sig1.remove(sig2[i])
        else:
            misses += 1

    if(sig1Smaller):
        misses += len(sig2)
    else:
        misses += len(sig1)

    Accuracy_Metric1 = hits/(hits+misses)
    
    misses2 = abs(hits-len(sig2))
   
    Accuracy_Metric2 = hits/(hits+misses2)

    return Accuracy_Metric1, Accuracy_Metric2,hits, misses, misses2