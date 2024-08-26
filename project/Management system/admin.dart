import 'dart:io';

void adminLogin(List<Map<String, String>> usersInfo, String adminUsername,
    String adminPassword) {
  stdout.write("Enter admin username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter admin password: ");
  String? password = stdin.readLineSync();

  if (username == adminUsername && password == adminPassword) {
    print("Admin login successful.");
    adminMenu(usersInfo);
  } else {
    print("Invalid admin credentials.");
  }
}

void adminMenu(List<Map<String, String>> usersInfo) {
  while (true) {
    print("\n1. View All User Info");
    print("2. Add User Info");
    print("3. Delete User Info");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      viewAllUserInfo(usersInfo);
    } else if (choice == '2') {
      addUserInfo(usersInfo);
    } else if (choice == '3') {
      deleteUserInfo(usersInfo);
    } else if (choice == '4') {
      print("Exiting Admin Menu...");
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}

void viewAllUserInfo(List<Map<String, String>> usersInfo) {
  if (usersInfo.isEmpty) {
    print("No user info available.");
  } else {
    print("\nUser Information:");
    for (int i = 0; i < usersInfo.length; i++) {
      print(
          "${i + 1}. Username: ${usersInfo[i]['username']}, User Number: ${usersInfo[i]['Number']}, User Email: ${usersInfo[i]['Email']}");
    }
  }
}

void addUserInfo(List<Map<String, String>> usersInfo) {
  stdout.write("Enter new username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter user number: ");
  String? number = stdin.readLineSync();

  stdout.write("Enter user email: ");
  String? email = stdin.readLineSync();

  if (username != null &&
      number != null &&
      email != null &&
      username.isNotEmpty &&
      number.isNotEmpty &&
      email.isNotEmpty) {
    bool userExists = usersInfo.any((user) => user['username'] == username);

    if (userExists) {
      print("Username already exists. Please choose a different username.");
    } else {
      usersInfo.add({'username': username, 'Number': number, 'Email': email});
      print("User info added successfully.");
    }
  } else {
    print("All fields are required. Please try again.");
  }
}

void deleteUserInfo(List<Map<String, String>> usersInfo) {
  stdout.write("Enter username to delete: ");
  String? usernameToDelete = stdin.readLineSync();

  if (usernameToDelete != null && usernameToDelete.isNotEmpty) {
    bool userExists =
        usersInfo.any((user) => user['username'] == usernameToDelete);

    if (userExists) {
      usersInfo.removeWhere((user) => user['username'] == usernameToDelete);
      print("User info for '$usernameToDelete' deleted successfully.");
    } else {
      print("User not found.");
    }
  } else {
    print("Username cannot be empty.");
  }
}
