Bacteria dan;   
 void setup()   
 {  
 	size(500,500);
 	dan = new Bacteria(250,250,255);  
 }   
 void draw()   
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

	 	void move() {
	 		x+=(int)(Math.random()*3)-1;
	 		y+=(int)(Math.random()*3)-1;
	 	}

	 	void show() {
	 		fill(c);
	 		ellipse(x,y,5,5);
	 	}
 }    