void main() {
  final items = const [3, 8, 0, 5, 9];
  var result = 0;
  for (var item in items) {
    if (item == 0) continue;
    result += item;
  }
  print("The sum of ${items} numbers is $result");
}
