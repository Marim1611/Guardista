from gensim.models import Word2Vec
import sys
import numpy as np
import os
import gensim

# Define a list of tokenized sentences
# sentences = [["this", "is", "a", "sentence"], ["this", "is", "another", "sentence"], ["yet", "another", "sentence"]]
# sentences = [["this is a sentence"], ["this is another sentence"], ["yet another sentence"]]

in_path = sys.argv[1]
cwe_1 = sys.argv[2]
# cwe_2 = sys.argv[3]
# out_path = sys.argv[4]

# Load pre-trained Word2Vec model.
# model = gensim.models.Word2Vec.load(in_path+"/"+cwe_1+"/word2vec.model")

all_tokens_array = []

for i in range(20):
    # if i!=13:
    with open(str(os.path.join(in_path, cwe_1,'tokens_array_'+str(i)))+'.npy', 'rb') as f:
        tokens_arrays = np.load(f, allow_pickle=True)
        for ta in tokens_arrays:
            print(len(ta))
            all_tokens_array.append(list(ta))

# for i in range(20):
#     with open(str(os.path.join(in_path, cwe_2,'tokens_array_'+str(i)))+'.npy', 'rb') as f:
#         tokens_arrays = np.load(f, allow_pickle=True)
#         for ta in tokens_arrays:
#             # print(len(ta))
#             all_tokens_array.append(list(ta))
    
print(len(all_tokens_array))

# Train a Word2Vec model with the CBOW architecture
model = Word2Vec(all_tokens_array, vector_size=100, window=3, min_count=1, workers=4, sg=0, sample=1e-3)

# Save the trained model to disk
model.save(in_path+"/"+cwe_1+"/word2vec.model")


# # Train the model on the new data
# model.build_vocab(all_tokens_array, update=True)
# model.train(all_tokens_array, total_examples=len(all_tokens_array), epochs=model.epochs)


