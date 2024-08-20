import 'dart:io';

class User {
  void userPage(List<Map<String, String>> usersInfo) {
    print("Enroll yourself in Given Courses :\n");
    print("1. Flutter App & Web Development");
    print("2. Web Development MERN Stack");
    print("3. Graphic Designing");
    print("4. Ethical Hacking\n");
    stdout.write("Choose option : ");
    String? option = stdin.readLineSync();

    if (option != null) {
      if (option == "1") {
        stdout.write("Enter your name : ");
        String? user = stdin.readLineSync();

        stdout.write("Enter your Phone Number : ");
        String? userNumber = stdin.readLineSync();

        stdout.write("Enter your Email Address : ");
        String? userEmail = stdin.readLineSync();

        if (user != null && userNumber != null && userEmail != null) {
          usersInfo.add(
              {'username': user, 'Number': userNumber, 'Email': userEmail});
          print(
              "\nCongratulations! You are part of Jawan Pakistan\n NAME : $user \n PHONE NO. : $userNumber \n EMAIL : $userEmail\n COURSE : Flutter App & Web Development");
        }
      } else if (option == "2") {
        stdout.write("Enter your name : ");
        String? user = stdin.readLineSync();

        stdout.write("Enter your Phone Number : ");
        String? userNumber = stdin.readLineSync();

        stdout.write("Enter your Email Address : ");
        String? userEmail = stdin.readLineSync();

        if (user != null && userNumber != null && userEmail != null) {
          usersInfo.add(
              {'username': user, 'Number': userNumber, 'Email': userEmail});
          print(
              "\nCongratulations! You are part of Jawan Pakistan\n NAME : $user \n PHONE NO. : $userNumber \n EMAIL : $userEmail\n COURSE : Web Development MERN Stack");
        }
      } else if (option == "3") {
        stdout.write("Enter your name : ");
        String? user = stdin.readLineSync();

        stdout.write("Enter your Phone Number : ");
        String? userNumber = stdin.readLineSync();

        stdout.write("Enter your Email Address : ");
        String? userEmail = stdin.readLineSync();

        if (user != null && userNumber != null && userEmail != null) {
          usersInfo.add(
              {'username': user, 'Number': userNumber, 'Email': userEmail});
          print(
              "\nCongratulations! You are part of Jawan Pakistan\n NAME : $user \n PHONE NO. : $userNumber \n EMAIL : $userEmail\n COURSE : Graphic Designing");
        }
      } else if (option == "4") {
        stdout.write("Enter your name : ");
        String? user = stdin.readLineSync();

        stdout.write("Enter your Phone Number : ");
        String? userNumber = stdin.readLineSync();

        stdout.write("Enter your Email Address : ");
        String? userEmail = stdin.readLineSync();

        if (user != null && userNumber != null && userEmail != null) {
          usersInfo.add(
              {'username': user, 'Number': userNumber, 'Email': userEmail});
          print(
              "\nCongratulations! You are part of Jawan Pakistan\n NAME : $user \n PHONE NO. : $userNumber \n EMAIL : $userEmail\n COURSE : Ethical Hacking");
        }
      } else {
        print("\nSorry, invalid option or input.");
      }
    } else {
      print("\nSorry, invalid option or input.");
    }
  }
}
