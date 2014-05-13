using Images
image1 	= imread("test1.jpg")
image2 	= gaussfilter(image)
image3 	= edgedetect(image1)
image4 	= gaussfilter(image2)
