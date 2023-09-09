import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(LoginLoading());
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: event.email, password: event.password);
          emit(LoginSuccess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            emit(LoginFailure(errorMessage: 'User Not Found!'));
          } else if (e.code == 'wrong-password') {
            emit(LoginFailure(errorMessage: 'Wrong Password'));
          }
        } catch (e) {
          emit(LoginFailure(errorMessage: 'Something Went Wrong'));
        }
      } else if (event is RegisterEvent) {
        emit(RegisterLoading());
        var auth = FirebaseAuth.instance;
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: event.email, password: event.password);
          emit(RegisterSuccess());
        } on FirebaseAuthException catch (ex) {
          if (ex.code == 'weak-password') {
            emit(RegisterFailure(errorMessage: 'Weak Password'));
          } else if (ex.code == 'email-already-in-use') {
            emit(RegisterFailure(errorMessage: 'Email Already In Use'));
          }
        } catch (e) {
          emit(RegisterFailure(errorMessage: 'Something Went Wrong'));

          // TODO
        }
      }
    });
  }
}
