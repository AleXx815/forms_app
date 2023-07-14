part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final Username userName;
  final String email;
  final Password password;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.isValid = false,
    this.userName = const Username.pure(),
    this.email = "",
    this.password = const Password.pure(),
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    Username? userName,
    String? email,
    Password? password,
  }) =>
      RegisterFormState(
        formStatus: formStatus ?? this.formStatus,
        isValid: isValid ?? this.isValid,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  List<Object> get props => [formStatus, isValid, userName, email, password];
}
