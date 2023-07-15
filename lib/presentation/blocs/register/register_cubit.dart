import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:forms_app/infrastructure/inputs/inputs.dart';
import 'package:formz/formz.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  void onSubmit() async {
    emit(
      state.copyWith(
        formStatus: FormStatus.validating,
        userName: Username.dirty(state.userName.value),
        password: Password.dirty(state.password.value),
        isValid: Formz.validate([
          state.userName,
          state.password,
          // todo state.email,
        ]),
      ),
    );

    print("Cubit submit: $state");
  }

  void userNameChanged(String value) {
    final username = Username.dirty(value);

    emit(
      state.copyWith(
        userName: username,
        isValid: Formz.validate([username, state.password]),
      ),
    );
  }

  void emailChanged(String value) {
    emit(
      state.copyWith(email: value),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.userName]),
      ),
    );
  }
}
