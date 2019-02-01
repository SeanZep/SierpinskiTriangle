int s = 10;
public void setup()
{
	background(0);
	size(800, 800);
}
public void draw()
{
	sierpinski(0, 800, s);
}
public void mouseDragged()//optional
{

}
public void keyPressed(){
	if(keyCode == UP)
		s+=10;
	if(keyCode == DOWN){
		s-=10;
		background(0);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20){
		fill(x, random(0, 255), y);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
		sierpinski(x+len/2, y, len/2);
	}
}