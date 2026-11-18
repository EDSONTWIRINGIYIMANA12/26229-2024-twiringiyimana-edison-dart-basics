// Fullname: Edison Twiringiyimana
// Reg No: 26229/2024

void main() {
  int x = 29; // your D
  String result = '';
  while (x > 0) {
    if (x % 2 == 0) {
      result += 'E';
    } else {
      result += 'O';
    }
    x -= 3;
  }
  print(result); // EOE
  print(result.length); // 3
  print(result.isEmpty ? 'nothing' : result[0]); // E
}
