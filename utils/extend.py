from datetime import datetime
from datetime import date
def getName(format_ = None):

    '''
    Get random a string with a format. Sample video1.mp4, img.jpg ...

    Input: 
       
        format: format of file, can None 

    Output: A string
    '''
    day = date.today().strftime("%d_%m_%Y")
    now = datetime.now()
    current_time = now.strftime("%H_%M_%S")

    name = day + "_" + current_time
    
    if format_ is not None:
        name += ".{}".format(format_)

    return name


