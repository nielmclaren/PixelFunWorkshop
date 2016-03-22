PixelFunWorkshop
================

Workshop for learning Processing. Load an image and transform it pixel by pixel.

Things to try:
 - play with mouseX, mouseY, frameCount but watch for divide by zero
 - x < 200
 - x < mouseX
 - x < 100 else if x < 200
 - x < 200 && y < 200
 - x / 10 % 2 == 0
 - x + y < 200
 - x*x + y*y < 90000
 - x*x + y*y < 90000 with offset e.g., x -= 100; y -= 100;
 - (x*x + y*y) / 10000 % 2 == 0
 - (x*x + y*y) / 400 % 2 == 0 Moiré!
 - set one of RGB to zero
 - manipulate rgb
 - swap RGB
 - lerpColor(c, 0xffffffff, 0.3);
 - img.get(img.width - x - 1, y);
 - 

Protect from divide by zero by cowardly returning the original colour.
```
if (mouseX == 0 || mouseY == 0) {
  return c;
}
```

Manipulate color components individually.
```
float r = red(c);
float g = green(c);
float b = blue(c);
return color(r, g, b);
```
