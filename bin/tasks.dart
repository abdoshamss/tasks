import 'dart:io';

void main(List<String> arguments) {
// task1();
//task2();
//task3();
//task4();
//task5();
//task6();
//task7();
//task8();
//task9();
//task10();
}

void task1() {
  List<String> animals = [
    "Lion",
    "Tiger",
    "cheetah",
  ];

//animals.forEach((animal)=>print(animal));

  for (var animal in animals) {
    print(animal);
  }

// for(int i =0 ;i<animals.length;i++)
// print(animals[i]);
}

void task2() {
  List<String> films = [
    "abdo",
    "Ali",
    "shamss",
    "manga",
    "Mostafa",
    "zoo",
    "Lion",
    "Asmaa"
  ];
  List<String> filmsWithLetterA = [];
  //films.forEach((film)=>film.startsWith("a")||film.startsWith("A")?filmsWithLetterA.add(film):null );
  for (String film in films) {
    film.startsWith("a") || film.startsWith("A")
        ? filmsWithLetterA.add(film)
        : null;
  }
  print(filmsWithLetterA);
}

void task3() {
  for (int i = 1; i <= 3; i++) {
    print("Please enter your email");
    String email = stdin.readLineSync()!;
    print("Please enter your passwrod");
    String password = stdin.readLineSync()!;
    if (i == 3) {
      print("you finished all your tryes");
    } else if (!email.endsWith("@gmail.com") && password.length < 7) {
      print(
          "Your email is not correct. And your password is too shrot. Please enter your password with length <= 7. Please try again");
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
  int firstNumber = int.tryParse(stdin.readLineSync()!.toString()) ?? 0;
  print("Please enter your last Number");
  int lastNumber = int.tryParse(stdin.readLineSync()!.toString()) ?? 0;

  print("\n");
  printEventNumbers(firstNumber: firstNumber, lastNumber: lastNumber);
  print("");
  printOddNumbers(firstNumber: firstNumber, lastNumber: lastNumber);
}

void printEventNumbers({required int firstNumber, required int lastNumber}) {
  print("Your Even Numbers is:");
  for (firstNumber; firstNumber <= lastNumber; firstNumber++) {
    if (firstNumber.isEven) {
      print(firstNumber == 0 ? null : firstNumber);
    }
  }
}

void printOddNumbers({required int firstNumber, required int lastNumber}) {
  print("Your Odd Numbers is:");
  for (firstNumber; firstNumber <= lastNumber; firstNumber++) {
    if (firstNumber.isOdd) {
      print(firstNumber == 0 ? null : firstNumber);
    }
  }
}

void task5() {
  print("Please enter a letter or two or three.");
  String letters = stdin.readLineSync()!;
  List<String> words = [
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
  List<String> wordsStartswithLetters = [];

  for (String word in words) {
    word.startsWith(letters) ? wordsStartswithLetters.add(word) : null;
  }
  // words.forEach((word) =>
  //     word.startsWith(letters)
  //         ? wordsStartswithLetters.add(word)
  //         : null);
  print(wordsStartswithLetters);
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

    String name = stdin.readLineSync()!;
    names.add(name);
  }
  for (var element in names) {
    name += element;
  }

  // names.forEach((element)=>name+=element);

  // if you want to print spaces use this
  // print(name);

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
  for (int i = 0; i < names.length; i++) {
    if (i.isEven) {
      print(names[i]);
    }
  }
}

void task10() {
  print("Please enter names");
  List<String> names = [];
  int counter = 1;
  while (true) {
    print("Please enter name $counter");
    String name = stdin.readLineSync()!;
    if (name == "cloes" || name == "exit" || name == "end") {
      break;
    }
    names.add(name);
    counter++;
  }
  print("The List of names is $names");
}
