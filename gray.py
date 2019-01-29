import cv2
import glob, os, errno

# Replace mydir with the directory you want
mydir = r'/home/ddmnn3/Downloads/BAGAN-master_2/Flood_final/test/1_1/'

#check if directory exist, if not create it
try:
    os.makedirs(mydir)
except OSError as e:
    if e.errno == errno.EEXIST:
        raise
for fil in glob.glob("/home/ddmnn3/Downloads/BAGAN-master_2/Flood_final/test/1/*.png"):
    image = cv2.imread(fil) 
    gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY) # convert to greyscale
    cv2.imwrite(os.path.join(mydir,fil),gray_image)
