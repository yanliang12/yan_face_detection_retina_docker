############yan_face_detectin.py############
from skimage import io
from face_detection import RetinaFace

detector = RetinaFace()

img= io.imread('faces.jpeg')

faces = detector(img)

i = 0

for face in faces:
	print(face)

	box, landmarks, score = faces[0]

	x1 = int(box[0])
	x2 = int(box[2])

	y1 = int(box[1])
	y2 = int(box[3])

	face_image = img[y1:y2,x1:x2,:]

	io.imsave(
		fname = '/Downloads/face_%02d.jpg'%(i), 
		arr = face_image,
		)
	i+=1
#############yan_face_detectin.py############
