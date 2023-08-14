import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_register_state.dart';

class LoginRegisterCubit extends Cubit<LoginRegisterState> {
  LoginRegisterCubit() : super(LoginRegisterInitial());

  static LoginRegisterCubit get(context) => BlocProvider.of(context);
  bool isVisible = true;
  bool isLoading = false;

  changeVisiblePassword() {
    return IconButton(
      onPressed: () {
        isVisible = !isVisible;
       emit(ChangeVisibleIcon());
      },
      icon: Icon(
        isVisible ? Icons.visibility : Icons.visibility_off,
      ),
    );
  }
  //
  // Future<void> registerUser({required String email , required String password}) async {
  //   isLoading = true;
  //   emit(RegisterLoading());
  //   try {
  //     var auth = FirebaseAuth.instance;
  //     await auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     isLoading = false;
  //     emit(RegisterSuccess());
  //   }on FirebaseAuthException catch (e) {
  //     if(e.code == 'weak-password'){
  //       isLoading = false;
  //       emit(RegisterFailure(errorMessage: 'weak-password'));
  //     }else if (e.code == 'email-already-in-use'){
  //       isLoading = false;
  //       emit(RegisterFailure(errorMessage: 'email-already-in-use'));
  //     }
  //   } catch (e) {
  //     isLoading = false;
  //     emit(RegisterFailure(errorMessage: 'there was an error please try again'));
  //   }
  // }
  //
  // Future<void> loginUser({required String email , required String password}) async {
  //   isLoading = true;
  //   emit(LoginLoading());
  //   try {
  //     var auth = FirebaseAuth.instance;
  //
  //     await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     isLoading = false;
  //     emit(LoginSuccess());
  //   } on FirebaseAuthException catch (e) {
  //     if(e.code == 'user-not-found'){
  //       isLoading = false;
  //       emit(LoginFailure(errorMessage: 'user-not-found'));
  //     }else if (e.code == 'wrong-password'){
  //       isLoading = false;
  //       emit(LoginFailure(errorMessage: 'wrong-password'));
  //     }
  //   }catch(e){
  //     isLoading = false;
  //     emit(LoginFailure(errorMessage: 'something went wrong'));
  //   }
  // }
}
