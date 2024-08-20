import 'dart:io';

void adminLogin(
    List<Map<String, String>> users,
    List<Map<String, String>> usersInfo,
    String adminUsername,
    String adminPassword) {
  stdout.write("Enter admin username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter admin password: ");
  String? password = stdin.readLineSync();

  if (username == adminUsername && password == adminPassword) {
    print("Admin login successful.");
    adminMenu(users, usersInfo);
  } else {
    print("Invalid admin credentials.");
  }
}

void adminMenu(
    List<Map<String, String>> users, List<Map<String, String>> usersInfo) {
  while (true) {
    print("\n1. View All Users");
    print("2. Add User");
    print("3. Delete User");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      viewAllUsers(users, usersInfo);
    } else if (choice == '2') {
      addUser(users);
    } else if (choice == '3') {
      deleteUser(users);
    } else if (choice == '4') {
      print("Exiting Admin Menu...");
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}

void viewAllUsers(
    List<Map<String, String>> users, List<Map<String, String>> usersInfo) {
  if (users.isEmpty) {
    print("No users have signed up yet.");
  } else {
    print("\nRegistered Users:");
    for (int i = 0; i < users.length; i++) {
      print(
          "${i + 1}. Username: ${users[i]['username']}, Password: ${users[i]['password']}");

      if (i < usersInfo.length) {
        print(
            "${i + 1}. Username: ${usersInfo[i]['username']}, User Number: ${usersInfo[i]['Number']}, User Email: ${usersInfo[i]['Email']}");
      }
    }
  }
}

void addUser(List<Map<String, String>> users) {
  stdout.write("Enter new username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter new password: ");
  String? password = stdin.readLineSync();

  if (username != null &&
      password != null &&
      username.isNotEmpty &&
      password.isNotEmpty) {
    bool userExists = users.any((user) => user['username'] == username);

    if (userExists) {
      print("Username already exists. Please choose a different username.");
    } else {
      users.add({'username': username, 'password': password});
      print("User added successfully.");
    }
  } else {
    print("All fields are required. Please try again.");
  }
}

void deleteUser(List<Map<String, String>> users) {
  stdout.write("Enter username to delete: ");
  String? usernameToDelete = stdin.readLineSync();

  if (usernameToDelete != null && usernameToDelete.isNotEmpty) {
    bool userExists = users.any((user) => user['username'] == usernameToDelete);

    if (userExists) {
      users.removeWhere((user) => user['username'] == usernameToDelete);
      print("User '$usernameToDelete' deleted successfully.");
    } else {
      print("User not found.");
    }
  } else {
    print("Username cannot be empty.");
  }
}
