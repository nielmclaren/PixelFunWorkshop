
// A variable to store the original image that we loaded.
PImage originalImage;

// A variable to store the image after we transform it.
PImage transformedImage;

// Setup our sketch. This function is called once when the sketch is run.
void setup() {
  // Set the width and height of the output window.
  size(640, 640);

  // Load our original image.
  originalImage = loadImage("neverforget.jpg");

  // Copy the original image to the transformed image for now.
  transformedImage = originalImage.get();
}

// Draw the sketch. This function is called repeatedly forever.
void draw() {
  // Set the background color of our sketch to black.
  background(0);

  // This function transforms each pixel in the first image
  // and saves the result as the second image.
  transformImage(originalImage, transformedImage);

  // Draw our transformed image at the given coordinates.
  image(transformedImage, 0, 0);
}

// This function transforms each pixel in the entire image.
// You don't need to know how this works to enjoy playing with it.
void transformImage(PImage inputImg, PImage outputImg) {
  // We need to call loadPixels so we can read the pixel values from the input image.
  inputImg.loadPixels();

  // Iterate over each column. This will loop through x values from zero to the image width.
  for (int x = 0; x < inputImg.width; x++) {
    // Iterate over each row. This will loop through y values from zero to the image height.
    for (int y = 0; y < inputImg.height; y++) {
      // Pixels are stored in a one-dimensional array so we need
      // to calculate the index from the x- and y-coordinates.
      int i = y * inputImg.width + x;
      outputImg.pixels[i] = transformPixel(inputImg, x, y, inputImg.pixels[i]);
    }
  }

  // We need to call updatePixels so the new pixels are saved to the output image.
  outputImg.updatePixels();
}

// This function takes the x- and y-coordinates and the original
// colour and returns the new, transformed colour.
color transformPixel(PImage img, int x, int y, color c) {
  // This is where you can have fun.
  if (x < 200) {
    return c;
  }
  else {
    return 0xffffffff;
  }
}

