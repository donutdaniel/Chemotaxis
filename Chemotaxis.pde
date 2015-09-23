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
 	
 	if (mousePressed && mouseButton==LEFT) {
 		for (int k=0;k<500;k++) {
 		marcus[k].moveaway();
 		marcus[k].show();
 		}
 	} else if (mousePressed && mouseButton==RIGHT) {
 		for (int k=0;k<500;k++) {
 		marcus[k].teleport();
 		marcus[k].show();
 		}
 	} else if (keyPressed==true&&key=='s') {
 		for (int k=0;k<500;k++) {
 		marcus[k].move();
 		marcus[k].show();
 		}
 	} else {
 		for (int j=0;j<500;j++) {
 		marcus[j].movefood();
 		marcus[j].show();
 		}
 	}
 }  
 class Bacteria    
 {     
 	int x,y,r,g,b,rd;
	 	Bacteria(int x1, int y1, int r1, int g1, int b1) {
	 		x=x1;
	 		y=y1;
	 		r=r1;
	 		g=g1;
	 		b=b1;
	 		rd=(int)(Math.random()*7+3);
	 	}

	 	void colour() {
	 		r++;
	 		g++;
	 		b++;
	 	}

	 	void move(){
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
	 			x+=(int)(Math.random()*101)-50;
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
	 			y+=(int)(Math.random()*101)-50;
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
	 		} else if (y>mouseY&&y<1000) {
	 			if ((int)(Math.random()*2)==0)
	 				y+=(int)(Math.random()*2);
	 			else
	 				y+=1;
	 		} else { 
	 			y+=(int)(Math.random()*3)-1;
	 		}
	 	}

	 	void teleport() {
	 		x=(int)(Math.random()*1000);
	 		y=(int)(Math.random()*1000);
	 	}

	 	void show() {
	 		fill(r,g,b,150);
	 		noStroke();
	 		ellipse(x,y,rd,rd);
	 	}
 }    