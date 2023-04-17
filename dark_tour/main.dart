String sayHello(String name, int age, [String? country = "Korea"]) {
  return 'Hello ${name}, You are ${age} from the ${country}';
}

void main() {
  var result = sayHello("eden", 3);
  print(result);
}
