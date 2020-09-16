/*
--------------------------------------
   Author:      MAFLL
   Start date:  11-09-2020
   End date:    11-09-2020
   Purpose:     > To draw a set of horizontal
                  and vertical lines
                > To color the rectangles in
                  between the lines in a random
                  color of gray
                > To change the color of any
                  clicked rectangle 
   
   Scripts:     > checkerAssignment01.java (main)

--------------------------------------
*/
String title = "Checkers Assignment";

// > used for placement of lines and rectangles
int screenSize = 500;    //width and height of window
int numOfLines = 5;      //number of lines to be drawn in both directions (eg. 5 horizontal, 5 vertical) as well as number of squares in each column/row
int squareSize = screenSize / numOfLines;    //size of rectangles (squares) in between lines

color colorChange = color(255,0,0);
int[] grayScale = {0,256};

// > initialization code
void setup() {
  size(500,500);
  surface.setTitle(title);
  surface.setLocation(displayWidth/3*2,displayHeight/4);
  //noStroke();    //optional, but will remove strokes, making the lines invisible
  drawLines();      //custom function is called
}

// > continuous code
void draw() {}

// > draws lines from edge to edge as well as rectangles in between
void drawLines() {
  for(int i=0;i<screenSize;i+=squareSize) {
    line(0,i,screenSize,i);    //horizontal lines
    line(i,0,i,screenSize);    //vertical lines
    for(int j=0;j<screenSize;j+=squareSize) {
      fill(int(random(grayScale[0],grayScale[1])));    //random gray color
      rect(j,i,squareSize,squareSize);    //rectangles are drawn in between lines
    }
  }
}

// > draws a different colored rectangle on top of any rectangle that is clicked
//void mouseClicked() {    //'mouseClicked()' or 'mousePressed()'? You decide
void mousePressed() {
  int sX = mouseX / squareSize * squareSize;    //the coordinates of the clicked rectangle is calculated
  int sY = mouseY / squareSize * squareSize;    
  fill(colorChange);
  rect(sX,sY,squareSize,squareSize);      //the different colored rectangle is drawn
}
