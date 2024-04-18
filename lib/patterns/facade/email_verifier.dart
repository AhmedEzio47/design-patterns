class EmailVerifier {
  bool isEmailVerified(String email) {
    return true;
  }

  bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }
}
