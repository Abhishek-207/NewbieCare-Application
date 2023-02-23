import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NewBieCareFirebaseUser {
  NewBieCareFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NewBieCareFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NewBieCareFirebaseUser> newBieCareFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NewBieCareFirebaseUser>(
      (user) {
        currentUser = NewBieCareFirebaseUser(user);
        return currentUser!;
      },
    );
