
def add_prefix_un(word):
    
    return 'un' + word


def make_word_groups(vocab_words):
 
    prefix = vocab_words[0]
    words = vocab_words[1:]
    
    prefixed_words = [prefix + word for word in words]
    grouped_words = ' :: '.join([prefix] + prefixed_words)
    
    return grouped_words
    

def remove_suffix_ness(word):

    if word[-5] == 'i':
        return word[:-5] + 'y'
    return word[:-4]


def adjective_to_verb(sentence, index):
    
    verbing = sentence.replace('.', '').split(' ')
    return verbing[index] + 'en'