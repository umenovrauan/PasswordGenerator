import 'dart:math';

void main() {
  // Some sample input data
  String inputString = "MyApp123";

  // Generate a list of passwords
  List<String> passwords = generatePasswords(inputString);

  // Print the generated passwords
  print("Generated Passwords:");
  for (String password in passwords) {
    print(password);
  }
}

List<String> generatePasswords(String inputString) {
  // Define the character sets
  String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String digits = "0123456789";
  String symbols = "!@#\$%^&*()_-+=<>?";
  String allCharacters = alphabet + digits + symbols;

  // Random number generator
  Random random = Random();

  // Generate passwords
  List<String> passwordList = [];
  for (int i = 0; i < 10; i++) {
    String password = '';
    for (int j = 0; j < 16; j++) {
      int randomIndex = random.nextInt(allCharacters.length);
      password += allCharacters[randomIndex];
    }
    passwordList.add(password);
  }

  return passwordList;
}
