import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QuantumaniaFirebaseUser {
  QuantumaniaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QuantumaniaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuantumaniaFirebaseUser> quantumaniaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QuantumaniaFirebaseUser>(
      (user) {
        currentUser = QuantumaniaFirebaseUser(user);
        return currentUser!;
      },
    );
