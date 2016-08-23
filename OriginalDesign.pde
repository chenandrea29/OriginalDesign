int vertex;
int vertexX;
int vertexY;
int otherPointX = int(random(0, 500));
int otherPointY = int(random(0, 500));
int midpointX;
int midpointY;

void setup() {
  	size(500, 500);
  	background(0);
  	fill(255);
  	triangle(450, 50, 450, 450, 50, 450);
}

void draw() {
	pickVertex();
	drawPoint();
}

void pickVertex() {
	vertex = int(random(1, 4));
	if (vertex == 1) {
		vertexX = 450;
		vertexY = 50;
	} else if (vertex == 2) {
		vertexX = 450;
		vertexY = 450;
	} else {
		vertexX = 50;
		vertexY = 450;
	}

}

void drawPoint() {
	point(otherPointX, otherPointY);
	midpointX = int((vertexX + otherPointX)/2);
	midpointY = int((vertexY + otherPointY)/2);
	point(midpointX, midpointY);
	otherPointX = midpointX;
	otherPointY = midpointY;
}