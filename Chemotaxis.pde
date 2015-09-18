Bacteria [] marcus = new Bacteria[500];
 void setup()   
 {  
 	size(1000,1000);
 	for (int i=0;i<500;i++) {
 		int r2=(int)(Math.random()*256);
 		int g2=(int)(Math.random()*256);
 		int b2=(int)(Math.random()*256);
 		marcus[i]=new Bacteria((int)(Math.random()*1000),(int)(Math.random()*1000),r2,g2,b2);
 	}
 }   
 void draw()   
 {    
 	background(255);
 	
 	if (mousePressed) {
 		for (int k=0;k<500;k++) {
 		marcus[k].moveaway();
 		marcus[k].show();
 		}
 	}
 	else {
 		for (int j=0;j<500;j++) {
 		marcus[j].movefood();
 		marcus[j].show();
 		}
 	}
 }  
 class Bacteria    
 {     
 	int x,y,r,g,b;
	 	Bacteria(int x1, int y1, int r1, int g1, int b1) {
	 		x=x1;
	 		y=y1;
	 		r=r1;
	 		g=g1;
	 		b=b1;
	 	}

	 	void move() {
	 		x+=(int)(Math.random()*3)-1;
	 		y+=(int)(Math.random()*3)-1;
	 	}

	 	void movefood() {
	 		if (x<mouseX&&(x!=0||x!=1000)) {
	 			if (x%2==0)
	 				x+=(int)(Math.random()*2);
	 			else
	 				x+=1;
	 		} else if (x>mouseX&&(x!=0||x!=1000)) {
	 			if (x%2==0)
	 				x-=(int)(Math.random()*2);
	 			else
	 				x-=1;
	 		} else { 
	 			x+=(int)(Math.random()*31)-15;
	 		}

	 		if (y<mouseY&&(y!=0||y!=1000)) {
	 			if (x%2==0)
	 				y+=(int)(Math.random()*2);
	 			else
	 				y+=1;
	 		} else if (y>mouseY&&(y!=0||y!=1000)) {
	 			if (x%2==0)
	 				y-=(int)(Math.random()*2);
	 			else
	 				y-=1;
	 		} else { 
	 			y+=(int)(Math.random()*31)-15;
	 		} 
	 	}

	 	void moveaway() {
	 		if (x<mouseX&&x>0) {
	 			if ((int)(Math.random()*2)==0)
	 				x-=(int)(Math.random()*2);
	 			else
	 				x-=1;
	 		} else if (x>mouseX&&x<1000) {
	 			if ((int)(Math.random()*2)==0)
	 				x+=(int)(Math.random()*2);
	 			else
	 				x+=1;
	 		} else { 
	 			x+=(int)(Math.random()*3)-1;
	 		}

	 		if (y<mouseY&&y>0) {
	 			if ((int)(Math.random()*2)==0)
	 				y-=(int)(Math.random()*2);
	 			else
	 				y-=1;
	 		} else if (y>mouseY&&y<=000) {
	 			if ((int)(Math.random()*2)==0)
	 				y+=(int)(Math.random()*2);
	 			else
	 				y+=1;
	 		} else { 
	 			y+=(int)(Math.random()*3)-1;
	 		}
	 	}

	 	void show() {
	 		fill(r,g,b);
	 		noStroke();
	 		ellipse(x,y,5,5);
	 	}
 }    