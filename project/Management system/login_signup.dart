import 'dart:io'; 

class Login {
  void signUp(List<Map<String, String>> users) {
    stdout.write("Enter username: ");
    String? username = stdin.readLineSync();

    stdout.write("Enter password: ");
    String? password = stdin.readLineSync();

    if (username != null && password != null) {
      // Check if the username already exists
      bool userExists = users.any((user) => user['username'] == username);

      if (userExists) {
        print("Username already exists. Please try a different username.");
      } else {
        // Add the new user to the list
        users.add({'username': username, 'password': password});
        print("Sign up successful. You can now log in.");
      }
    } else {
      print("Username or password cannot be empty.");
    }
  }

  bool login(List<Map<String, String>> users) {
    stdout.write("Enter username: ");
    String? username = stdin.readLineSync();

    stdout.write("Enter password: ");
    String? password = stdin.readLineSync();

    if (username != null && password != null) {
      // Check if the user exists and the password matches
      bool loginSuccessful = users.any((user) =>
          user['username'] == username && user['password'] == password);

      if (loginSuccessful) {
        print("Login successful. Welcome, $username!");
        return true;
      } else {
        print("Invalid username or password. Please try again.");
      }
    } else {
      print("Username or password cannot be empty.");
    }
    return false;
  }
}
