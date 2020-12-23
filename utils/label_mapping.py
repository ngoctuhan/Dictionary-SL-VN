
def get_mapping():

    CLASSES = {}
    with open('utils/label.txt', encoding='utf-8') as file:

        lines = file.readlines()
        for line in lines:
            line = line.split('\n')[0]
            id, label =  line.split('  :  ')[0], line.split('  :  ')[1]
            CLASSES[id] = label

    # print(CLASSES)
    return CLASSES



