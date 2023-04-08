import Levenshtein

def levenshtein_similarity(a, b):
    # calculate Levenshtein similarity
    d = Levenshtein.distance(a, b)
    s = 1 - d / max(len(a), len(b))
    return s

sentence1 = "I love dogs"
sentence2 = "I love cats"
d = levenshtein_similarity(sentence1, sentence2)
print(d)