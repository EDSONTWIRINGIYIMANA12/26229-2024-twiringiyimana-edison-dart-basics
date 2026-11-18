int count = 1; // Global variable: count starts at 1

void bump() {
  int count = 10; // Local variable: this is different from global count
  count++; // Local count becomes 11, but global count remains 1
}

void doubleIt(int value) {
  value = value * 2; // Doubles the local copy of value
  // The original variable v in main() remains unchanged
}

int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;
// Adds VAT to the price.
// Default VAT rate is 18%.
// ~/ performs integer division, discarding the decimal part.

void main() {
  bump(); // Calls bump(), but global count remains 1

  print(count); // Output: 1

  int v = 5; // Creates variable v with value 5

  doubleIt(v); // Passes a copy of v to doubleIt()

  print(v); // Output: 5 because the original v is unchanged

  print(addVat(1000)); // Output: 1180 (default VAT rate is 18%)

  print(addVat(999)); // Output: 1178 (179.82 VAT is rounded down to 179)

  print(addVat(1000, rate: 0)); // Output: 1000 (VAT rate is 0%)
}
// so predicted output is 1, 5, 1180, 1178, 1000
//explaination: The code demonstrates the difference between local and global variables, as well as how function parameters work in Dart. The `bump()` function modifies a local variable named `count`, which does not affect the global `count`. The `doubleIt()` function takes a copy of the variable `v`, so changes made inside the function do not affect the original variable. The `addVat()` function calculates the price including VAT, with a default rate of 18%, and allows for an optional custom rate. The output reflects these behaviors.
