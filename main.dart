void main(){
  print('Hello world!');
  printFruits();
}

void printFruits(){
  List<String> fruits = ['Banana', 'Melon', 'Kiwi', 'Lemon'];
  for (final fruit in fruits){
    print(fruit);
  }
}