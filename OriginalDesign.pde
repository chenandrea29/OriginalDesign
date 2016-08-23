float vertex;
int vertexX;
int vertexY;
float randomPointX = random(0, 250);
float randomPointY = random(0, 250);
float midpointX;
float midpointY;

void setup() {
  	size(250, 250);
  	background(0);
  	fill(255);
  	triangle(200, 50, 200, 200, 50, 200);
}

void draw() {
	pickVertex();
	stroke(0, 153, 153);
	drawPoint();
}

void pickVertex() {
	vertex = random(1, 4);
	println("vertex: "+ vertex);
	if (vertex >= 1 && vertex < 2) {
		vertexX = 200;
		vertexY = 50;
	} else if (vertex >= 2 && vertex < 3) {
		vertexX = 200;
		vertexY = 200;
	} else {
		vertexX = 50;
		vertexY = 200;
	}

}

void drawPoint() {
	point(randomPointX, randomPointY);
	midpointX = (vertexX + randomPointX)/2;
	midpointY = (vertexY + randomPointY)/2;
	point(midpointX, midpointY);
	line(randomPointX, randomPointY, midpointX, midpointY);
	randomPointX = midpointX;
	randomPointX = midpointY;
}

