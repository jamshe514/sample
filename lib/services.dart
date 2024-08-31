import 'package:firebase_auth/firebase_auth.dart';

class Fire {
  FirebaseAuth a = FirebaseAuth.instance;
  Future<User?> singnwithemailpass(String email, String password) async {
    try {
      UserCredential credential = await a.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email alresdy in use') {
        print('the email already in use');
      } else {
        print('an erroroccured:${e.code}');
      }
    }
    return null;
  }
}
