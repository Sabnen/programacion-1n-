size (500,500);
background(#808080);

for (int i = 0; i <= 500; i++) {
  for (int j = 0; j < 500; j++) {
    if ((j+i) % 2 == 0) {
      fill(#000000);
    } else {
      fill(#8AFFFB);
    }
    square(i * 100, j * 100, 100);
  }
}
