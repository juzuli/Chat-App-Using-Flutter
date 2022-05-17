import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo{
  loginWithEmailPassword(String email, String password)async{
    UserCredential userCredential= await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
  registerWithEmailPassword(String email, String password)async{
    UserCredential userCredential= await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

}