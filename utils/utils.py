
import pandas as pd
df = pd.read_csv('database/data.csv')

# def get_iframe(keyword):

#     global df
#     try:
#         result = df[df["words"] == keyword].iloc[0]['link']
#     except:
#         result = 'Không có từ cần tra trong cơ sở dữ liệu.'
#     return result
print(df.head())
import re
import string
def drop_punctuation(s):
    table = str.maketrans(dict.fromkeys(string.punctuation))  # OR {key: None for key in string.punctuation}
    new_s = s.translate(table) 
    return new_s
def no_accent_vietnamese(s):
    s = re.sub(r'[àáạảãâầấậẩẫăằắặẳẵ]', 'a', s)
    s = re.sub(r'[ÀÁẠẢÃĂẰẮẶẲẴÂẦẤẬẨẪ]', 'A', s)
    s = re.sub(r'[èéẹẻẽêềếệểễ]', 'e', s)
    s = re.sub(r'[ÈÉẸẺẼÊỀẾỆỂỄ]', 'E', s)
    s = re.sub(r'[òóọỏõôồốộổỗơờớợởỡ]', 'o', s)
    s = re.sub(r'[ÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ]', 'O', s)
    s = re.sub(r'[ìíịỉĩ]', 'i', s)
    s = re.sub(r'[ÌÍỊỈĨ]', 'I', s)
    s = re.sub(r'[ùúụủũưừứựửữ]', 'u', s)
    s = re.sub(r'[ƯỪỨỰỬỮÙÚỤỦŨ]', 'U', s)
    s = re.sub(r'[ỳýỵỷỹ]', 'y', s)
    s = re.sub(r'[ỲÝỴỶỸ]', 'Y', s)
    s = re.sub(r'[Đ]', 'D', s)
    s = re.sub(r'[đ]', 'd', s)
    return s

names = df['name']
urls = df['link']


words_modify = []

links = []

for i,name in enumerate(names):

    name = name.lower()
    words =  name.split('/')
    words2 =  name.split(',')
    drop_words = name.split(' - ')
    if len(words) > 1:
        for word in words:
            words_modify.append(word)
            links.append(urls[i])
    elif len(drop_words) > 1:
        print(drop_words[-1])
        words_modify.append(drop_words[-1])
        links.append(urls[i])
    elif len(words2) > 1:
        for word in words2:
            words_modify.append(word)
            links.append(urls[i])
    
    else:    
        words_modify.append(name)
        links.append(urls[i])

for i in range(len(words_modify)):
    words_modify[i] = words_modify[i].lstrip()
    words_modify[i] = words_modify[i].rstrip()
    words_modify[i] = drop_punctuation(words_modify[i])
    # words_modify[i] = words_modify[i].split('.')[0]
    # words_modify[i] = words_modify[i].rstrip('?')[0]

bodau = []

for i, w  in enumerate(words_modify):
    bodau.append(no_accent_vietnamese(w))
    links.append(links[i])

words_modify += bodau 

print(words_modify[:5])
columns = ['word','link']

df_ = pd.DataFrame(columns=columns)

df_['word'] =  words_modify
df_['link'] =  links
df_.to_csv('data_off.csv', index=False, encoding="utf-8-sig")
    
# if __name__ == "__main__":

    # print(get_iframe('sung '))