String sayHello({
  String name = 'ko',
  int age = 99,
  String country = 'Italy',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayHello());
}
