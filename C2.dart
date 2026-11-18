// Fullname: Sabato Anick
// Reg No:  25952/2024

void main() {
  int day = 2;
  // it produces a compiler error because dart does not allow a non-empty case to follow through another case un closed even when i change day to 1 the output is the same
  switch (day) {
    case 1:
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');
  }
}
