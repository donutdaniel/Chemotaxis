import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

Bacteria dan;   
 public void setup()   
 {  
 	size(500,500);
 	dan = new Bacteria(250,250,255);  
 }   
 public void draw()   
 {    
 	background(0);
 	dan.move();
 	dan.show();
 }  
 class Bacteria    
 {     
 	int x,y,c;
	 	Bacteria(int x1, int y1, int c1) {
	 		x=x1;
	 		y=y1;
	 		c=c1;
	 	}

	 	public void move() {
	 		x+=(int)(Math.random()*3)-1;
	 		y+=(int)(Math.random()*3)-1;
	 	}

	 	public void show() {
	 		fill(c);
	 		ellipse(x,y,5,5);
	 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
