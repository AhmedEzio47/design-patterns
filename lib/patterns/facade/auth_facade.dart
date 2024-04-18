import '../../index.dart';

class AuthFacade {
  UserAuthenticator userAuthenticator = UserAuthenticator();
  EmailVerifier emailVerifier = EmailVerifier();

  String authenticate(String username, String password) {
    if (!userAuthenticator.authenticate(username, password)) {
      return 'Authentication failed';
    }

    if (!emailVerifier.isEmailVerified(username)) {
      return 'Email is not verified';
    }

    if (!emailVerifier.isEmailValid(username)) {
      return 'Email is not valid';
    }

    if (!userAuthenticator.isActive(username)) {
      return 'User is not active';
    }

    return 'Authentication successful';
  }
}
