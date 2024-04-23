import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_doc/core/utils/regex/regex_manager.dart';
import 'package:v_doc/core/widgets/app_form_field.dart';
import 'package:v_doc/core/widgets/app_text_btn.dart';
import 'package:v_doc/core/widgets/validation_list.dart';

import 'package:v_doc/features/signup/data/models/request_body.dart';
import 'package:v_doc/features/signup/logic/cubit/signup_cubit.dart';

class AuthentecationSignUpForm extends StatefulWidget {
  const AuthentecationSignUpForm({super.key});

  @override
  State<AuthentecationSignUpForm> createState() =>
      _AuthentecationSignUpFormState();
}

class _AuthentecationSignUpFormState extends State<AuthentecationSignUpForm> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasDigits = false;
  bool hasSpecialCharacters = false;
  bool hasMinLenght = false;

  @override
  void initState() {
    super.initState();
    setupPasswordValidationListeners();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomFormField(
            hintText: 'Name',
            validator: (val) => _baseValidatation(val, 'Name is required'),
            controller: nameController,
          ),
          const SizedBox(height: 18),
          CustomFormField(
            hintText: 'Email',
            validator: (val) => _emailValidatation(val, 'Email is required'),
            controller: emailController,
          ),
          const SizedBox(height: 18),
          CustomFormField(
            hintText: 'Password',
            controller: passwordController,
            validator: (val) => _baseValidatation(val, 'Password is required'),
            obscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () => setState(() => isObscureText = !isObscureText),
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          const SizedBox(height: 18),
          CustomFormField(
            hintText: 'Confirm Password',
            controller: passwordConfirmController,
            validator: (val) {
              final err =
                  _baseValidatation(val, 'Password Confirmation is required');
              if (err != null) return err;
              if (val == passwordController.text.trim()) return null;
              return 'Password Confirmation Didnot match';
            },
            obscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () => setState(() => isObscureText = !isObscureText),
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          const SizedBox(height: 18),
          AuthValidationList(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasDigits: hasDigits,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLenght: hasMinLenght,
          ),
          const SizedBox(height: 40),
          CustomTextBtn(
            text: 'Sign Up',
            onPressed: () => _validateThenPerfromSignUp(context),
          ),
        ],
      ),
    );
  }

  String? _baseValidatation(String? val, String errMessage) {
    if (val == null || val.isEmpty) {
      return errMessage;
    }
    return null;
  }

  String? _emailValidatation(String? val, String errMessage) {
    if (val == null || val.isEmpty || !RegexManager.isEmailValid(val)) {
      return errMessage;
    }
    return null;
  }

  void _validateThenPerfromSignUp(BuildContext context) {
    final signupCubit = context.read<SignupCubit>();
    if (formkey.currentState!.validate()) {
      signupCubit.emitSignUpState(
        reqeuestBody: SignUpRequestBody(
          name: nameController.text.trim(),
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          passwordConfirmation: passwordConfirmController.text.trim(),
        ),
      );
    }
  }

  void setupPasswordValidationListeners() {
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasLowerCase = RegexManager.hasLowerCase(password);
        hasUpperCase = RegexManager.hasUpperCase(password);
        hasDigits = RegexManager.hasNumber(password);
        hasSpecialCharacters = RegexManager.hasSpecialCharacter(password);
        hasMinLenght = RegexManager.hasMinLength(password);
      });
    });
  }
}
