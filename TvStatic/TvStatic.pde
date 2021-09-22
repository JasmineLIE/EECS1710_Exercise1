/*
*TvStatic, a preformance testing program
*The focus of this program was to have change happen upon the user drawing the line.  Random generation was utilized for the background of flicking ellipses--t.v static--with text that both would change upon user interaction
*While utilizing the taught way on how to draw, other elements were added through further research to make it more engaging
*For the random generated background, this video was used as reference: https://www.youtube.com/watch?v=ixD-sZ2tSu0&ab_channel=MrJohnsonComputing
*/




PFont font;
void setup() {
  size(700, 870, P2D);
  surface.setLocation(740, -100); //The setLocation() function defines the position of the Processing sketch in relation to the upper-left corner of the computer screen
  
  
  
 
  
  font = createFont("Arial", 24);
  textFont(font);
  
 
  }
  

void draw() {
  //running code in here 60 times a second
  background(0);
   //for the background it will be randomly generated stars
  for (int i = 0; i < 100; i++) {  //tells program to do something a certain amount of times--the code runs while i is less than 100, each run 1 is added to i, until it eventually adds to 100
  float weight = random(10); //generates a random stroke weight from size 0-4
    float x = random(width); //x-position that is a random number from 0 all the way to how wide the canvas is
    float y = random(height); //y-position is a random number from 0 to how long the screen is
    float colour = random(100, 255);
    
     point(x, y); //to make stars that will randomly generate across the screen
     strokeWeight(weight); //changes the thickness of the point
     stroke(colour); //controls the value of stars
  
  
  
  if (mousePressed == true) {
    fill(0, 5);
rect(0, 0, width, height); //transparent rectangle, this makes the illusion of fade out, 0 is a greyscale parameter

fill(20, 130, 255); //colours in the bracket
stroke(255, 10, 10);
line(mouseX, mouseY, pmouseX, pmouseY); //pmouse==previous location of mouse, this trails the circle
ellipse(mouseX, mouseY, 15, 15); 

fill(#FC0000);  
text("BUZZ BUZZ BUZZ BUZZ", width/2, height/2);
  
    
} else{ 
  text("T.V Static...", width/2, height/2);
  fill(#FFFFFF);
 
}

  }
  
 


}
