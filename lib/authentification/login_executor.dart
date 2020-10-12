import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void email_pass_signin(String email, String password) async{

  FirebaseApp init = Firebase.app('Init');
  FirebaseAuth auth = FirebaseAuth.instanceFor(app: init);

  try {
    UserCredential user = await auth.signInWithEmailAndPassword(
      email: email,
      password: password
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }

}