import 'dart:io';

void main(List<String> arguments) {
  task8();
}

void task1() {
  List<String> list = [
    "Lion",
    "Tiger",
    "cheetah",
  ];

  for (String animal in list) {
    print(animal);
  }
}

void task2() {
  List<String> list = [
    "abdo",
    "Ali",
    "shamss",
    "manga",
    "Mostafa",
    "zoo",
    "Lion",
    "Asmaa"
  ];
  List<String> result = [];
  for (String film in list) {
    if (film.toLowerCase().startsWith('a')) {
      result.add(film);
    }
  }
  print(result);
}

void task3() {
  for (int i = 1; i <= 3; i++) {
    print("Please enter your email");
    String email = stdin.readLineSync()!;
    print("Please enter your passwrod");
    String password = stdin.readLineSync()!;
    if (i == 3) {
      print("you finished all your tryes");
    } else if (!email.endsWith("@gmail.com")) {
      print("Your email is not correct. Please try again");
    } else if (password.length < 7) {
      print(
          "Your password is too shrot. Please enter your password with length <= 7");
    } else {
      print("Ok");
      break;
    }
  }
}

void task4() {
  print("Please enter your first Number");
  int firstNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Please enter your last Number");
  int lastNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("\n");
  printEventNumbers(firstNumber: firstNumber, lastNumber: lastNumber);
  print("");
  printOddNumbers(firstNumber: firstNumber, lastNumber: lastNumber);
}

void printEventNumbers({required int firstNumber, required int lastNumber}) {
  print("Your Even Numbers is:");
  for (firstNumber; firstNumber <= lastNumber; firstNumber++) {
    if (firstNumber.isEven) {
      print(firstNumber);
    }
  }
}

void printOddNumbers({required int firstNumber, required int lastNumber}) {
  print("Your Odd Numbers is:");
  for (firstNumber; firstNumber <= lastNumber; firstNumber++) {
    if (firstNumber.isOdd) {
      print(firstNumber);
    }
  }
}

void task5() {
  print("Please enter a letter or two or three.");
  String letters = stdin.readLineSync()!;
  List<String> list = [
    "abdo",
    "Shamss",
    "Mostafa",
    "khaled",
    "Lion",
    "Mohamed",
    "yousef",
    "asmaa",
    "alaa",
    "word",
    "abcd",
    "abcdefgg",
    "acdefgg",
    "Mohnd"
  ];
  List<String> result = [];

  for (String word in list) {
    if (word.startsWith(letters)) {
      result.add(word);
    }
  }

  print(result);
}

void task6() {
  print("Please enter a statment");
  String statment = stdin.readLineSync()!;
  List<String> words = statment.split(' ');
  print("The List is $words");
}

void task7() {
  String statement = stdin.readLineSync()!;
  String newStatement = "";
  newStatement = statement.replaceAll(RegExp("[0-9!@#%^&*()_+-?><.,|/]"), "");
  print(newStatement);
}

void task8() {
  print("Please enter 10 words");
  List<String> names = [];
  String name = "";
  for (int i = 0; i < 10; i++) {
    print("enter name ${(i + 1)}");

    name = stdin.readLineSync()!;
    names.add(name);
  }

  name = names.join("");

  print(name.replaceAll(" ", ""));
}

void task9() {
  List<String> names = [
    "abdo",
    "shamss",
    "khaled",
    "mostafa",
    "amr",
    "yousef",
    "manga",
    "malak"
  ];
  for (int i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
}

void task10() {
  List<String> cases = ["cloes", "exit", "end"];
  print("Please enter names");
  List<String> list = [];
  int counter = 1;
  while (true) {
    print("Please enter name $counter");
    String name = stdin.readLineSync()!;
    if (cases.contains(name)) {
      break;
    }
    list.add(name);
    counter++;
  }
  print("The List of names is $list");
}
