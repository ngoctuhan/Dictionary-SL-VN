import requests
from lxml import html


def make_format(keyword):

    # covert string to lowercase
    keyword = keyword.lower()

    # make format search
    word_list = keyword.split(" ")
    return '+'.join(map(str, word_list))


def get_link(str):
    '''
    GET a link from a string
    '''
    part_link = str.split('/')

    # check source from youtube
    if str.find("youtube") != -1:
        return part_link[-2]
    else:
        return None


def get_respond(keyword):

    if keyword is None:
        raise Exception("Need a keyword")
    else:
        URL = "https://tudienngonngukyhieu.com/tu-ngu/tim-kiem?q={}&phonetic_id=".format(
            make_format(keyword))

        r = requests.post(url=URL)

        # print(r.text)
        tree = html.fromstring(r.content)

        ele_list = tree.xpath(
            "//div[contains(@class, 'imagebox-item-container')]")

        if len(ele_list) == 0:
            '''
            Không tìm thấy kết quả 
            '''
            return None

        for element in ele_list:
            id_video = element.items()[1][1]
            '''
            background-image: url('http://img.youtube.com/vi/xMiHpyPJX8c/0.jpg');
            '''
            # process to get id
            id_video = get_link(id_video)
            if id_video is not None:
                return id_video

        return None


print(get_respond("vkl"))
