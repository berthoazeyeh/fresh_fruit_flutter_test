import 'package:flutter/foundation.dart';
import 'package:text_flutter/models/user.dart';

enum AuthStatus { authenticated, unauthenticated }

class UserProvider extends ChangeNotifier {
  User? _user;
  AuthStatus _authStatus = AuthStatus.unauthenticated;

  AuthStatus get authStatus => _authStatus;
  User? get user => _user;

  void setAuthStatus(AuthStatus authStatu) {
    _authStatus = authStatu;
    notifyListeners();
  }

  void setUser(User? user) {
    _user = user;
    _authStatus = AuthStatus.authenticated;
    notifyListeners();
  }

  void signOut() {
    _user = null;
    _authStatus = AuthStatus.unauthenticated;
    notifyListeners();
  }
}
