Spaceship lightyear = new Spaceship();
Star stars[] = new Star[100];
public void setup() 
{
	for(int i = 0 ; i < stars.length ; i++){
		stars[i] = new Star();
	}
	size(800,600);
	lightyear.setDirectionX(0);
	lightyear.setDirectionY(0);
}
public void draw() 
{
	background(0);
	for(int i = 0 ; i < stars.length ; i++){
		stars[i].show();
	}
    lightyear.show();
    lightyear.move();
}
public void keyPressed(){
	if(key == 'd'){ //turn right
		lightyear.turn(30);
	}
	if(key == 'a'){ //turn left
		lightyear.leftTurn(30);
	}
	if(key == 'w'){ //move up
		lightyear.accelerate(0.3);
	}
	if(key == 's'){ //move up
		lightyear.accelerate(-0.3);
	}
	if(key == 'g'){
		lightyear.setDirectionX(0);
		lightyear.setDirectionY(0);
		lightyear.setX((int)(Math.random()*800));
		lightyear.setY((int)(Math.random()*600));
	}
}
