size(720, 480);
strokeWeight(2);
background(0, 153, 204);
ellipseMode(RADIUS);

// Neck
stroke(255);
line(266, 257, 266, 162);
line(276, 257, 276, 162);
line(286, 257, 286, 162);

// Antennae
line(276, 155, 246, 112);
line(276, 155, 306, 56);
line(276, 155, 342, 170);

// Body
noStroke();
fill(255, 204, 0);
ellipse(264, 377, 33, 33);
fill(0);
rect(219, 257, 90, 120);
fill(255, 204, 0);
rect(219, 274, 90, 6);

// Head
fill(0);
ellipse(276, 155, 45, 45);
fill(255);
ellipse(288, 150, 14, 14);
fill(0);
ellipse(288, 150, 3, 3);
fill(255, 204, 255);
ellipse(263, 148, 5, 5);
ellipse(296, 130, 4, 4);
ellipse(305, 162, 3, 3);
