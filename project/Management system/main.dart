import 'dart:io';

import 'admin.dart';
import 'login_signup.dart';
import 'user_page.dart';

void main() {
  List<Map<String, String>> users = [];
  List<Map<String, String>> usersInfo = [];

  const String adminUsername = "admin";
  const String adminPassword = "ammar";

  while (true) {
    print("\nWELLCOME TO JAWAN  PAKISTAN MANAGEMENT SYSTEM");
    print("\nJAWAN  PAKISTAN COURSES");
    print("1. Sign Up");
    print("2. Login");
    print("3. Admin Login");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      Login login2 = Login();
      login2.signUp(users);
    } else if (choice == '2') {
      Login login1 = Login();
      bool isLoggedIn = login1.login(users);
      if (isLoggedIn) {
        User currentUser = User();
        currentUser.userPage(usersInfo);
      }
    } else if (choice == '3') {
      adminLogin(usersInfo, adminUsername, adminPassword);
    } else if (choice == '4') {
      print("Exiting...");
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}
