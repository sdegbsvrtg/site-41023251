import pySTL
from numpy import array

def leoprint(x):
    try:
        print(x)
    except:
        g.es(x)

#Load a model from a file.
model = pySTL.STLmodel('./../../link2_ascii.stl')
leoprint(model.get_volume())

#print model properties
leoprint("Volume  " + str(model.get_volume()))
c = model.get_centroid()
leoprint("Centroid " +  "X: " + str(c[0]) + " Y:" + str(c[1]) + "  Z:" + str(c[2]))

#Translate the model so that the centroid is at the origin.
model.translate(-c)
model.write_text_stl("link2_AtCentroid.stl")

#Rotate the model 90 degrees about the Y-axis
R2 = pySTL.rotationAboutY(-3.14159/2)

model.rotate(R2)

c = model.get_centroid()

leoprint("Centroid " +  "X: " + str(c[0]) + " Y:" + str(c[1]) + "  Z:" + str(c[2]))

model.write_text_stl('link2_rot_90_about_Y.stl')

#Scale the model down by 100%
scale = 0.001
model.scale(scale)

model.write_text_stl('link2_scale_down_0.001.stl')

