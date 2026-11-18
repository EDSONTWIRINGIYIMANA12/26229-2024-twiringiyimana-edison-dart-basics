void drawTriangle(int height) {
  for (int i = 1; i <= height; i++) {
    // Print spaces
    for (int j = 1; j <= height - i; j++) {
      print(' '); // See corrected version below
    }

    // Odd rows use *, even rows use #
    String symbol = (i % 2 == 1) ? '*' : '#';

    // Print symbols
    String row = symbol * i;

    print(row);
  }
}

void main() {
  int D = 52; // my D is 52

  drawTriangle(D + 3);

  drawTriangle(0);
  drawTriangle(-2);
}
