from cs50 import get_string


def main():
    text = get_string("Text: ")
    
    letters = count_letters(text)
    words = count_words(text)
    sentences = count_sentences(text)
    
    L = (letters * 100) / words
    S = (sentences * 100) / words
    
    index = round(0.0588 * L - 0.296 * S - 15.8)
    
    if index > 16:
        print("Grade 16+")
    elif index < 1:
        print("Before Grade 1")
    else:
        print(f"Grade {index}")
    

def count_letters(text):
    count = 0
    for i in range(len(text)):
        if text[i] >= 'a' and text[i] <= 'z':
            count += 1
        elif text[i] >= 'A' and text[i] <= 'Z':
            count += 1
        
    return count


def count_words(text):
    count = 0
    for i in range(len(text)):
        if text[i] == " ":
            count += 1
            
    return count + 1
    

def count_sentences(text):
    count = 0
    for i in range(len(text)):
        if text[i] == "." or text[i] == "?" or text[i] == "!":
            count += 1
    return count
    
    
main()