import 'package:bloc/bloc.dart';
import 'package:chat_app_using_firebase/src/bloc/auth/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(AuthInitial());

  loginWithEmailPassword(String email, String password) async{
    emit(AuthLoading());
    try{
      UserCredential userCredential= await _authRepo.loginWithEmailPassword(email, password);
      if(userCredential==null){
        emit(AuthError());
      }else{
        emit(AuthLoaded(userCredential));
      }
    }catch(ex){
      emit(AuthError());
    }
  }

  registerWithEmailPassword(String email, String password) async{
    emit(AuthLoading());
    try{
      UserCredential userCredential= await _authRepo.loginWithEmailPassword(email, password);
      if(userCredential==null){
        emit(AuthError());
      }else{
        emit(AuthLoaded(userCredential));
      }
    }catch(ex){
      emit(AuthError());
    }
  }
}
