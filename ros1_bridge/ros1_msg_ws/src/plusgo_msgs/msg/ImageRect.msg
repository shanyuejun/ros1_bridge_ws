# Indicating from which camera's image
string  image_frame
############### 2D Rect
int32   x           # X coord in image space(pixel) of the initial point of the Rect
int32   y           # Y coord in image space(pixel) of the initial point of the Rect
int32   width       # Width of the Rect in pixels
int32   height      # Height of the Rect in pixels
float32 angle       # Angle [0 to 2*PI), allow rotated rects