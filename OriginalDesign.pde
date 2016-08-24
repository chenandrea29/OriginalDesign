int vertex;
int vertexX;
int vertexY;
int otherPointX = (int)(Math.random()*500);
int otherPointY = (int)(Math.random()*500);
int midpointX;
int midpointY;
int x1 = (int)(Math.random()*150);
int y1 = (int)(Math.random()*150)+350;
int x2 = (int)(Math.random()*150)+350;
int y2 = (int)(Math.random()*150)+350;
int x3 = (int)(Math.random()*250)+125;
int y3 = (int)(Math.random()*200);

void setup() {
  	size(500, 500);
  	background(0);
  	fill(255);
  	triangle(x1, y1, x2, y2, x3, y3);
}

void draw() {
	pickVertex();
	drawPoint();
}

void pickVertex() {
	vertex = (int)(Math.random()*3)+1;
	if (vertex == 1) {
		vertexX = x1;
		vertexY = y1;
	} else if (vertex == 2) {
		vertexX = x2;
		vertexY = y2;
	} else {
		vertexX = x3;
		vertexY = y3;
	}

}

void drawPoint() {
	point(otherPointX, otherPointY);
	midpointX = (int)(vertexX + otherPointX)/2;
	midpointY = (int)(vertexY + otherPointY)/2;
	point(midpointX, midpointY);
	otherPointX = midpointX;
	otherPointY = midpointY;
}