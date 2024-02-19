import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_hub/core/utils/regex/regex_manager.dart';
import 'package:recipe_hub/core/widgets/app_form_field.dart';
import 'package:recipe_hub/core/widgets/app_text_btn.dart';
import 'package:recipe_hub/features/login/data/models/request_body.dart';
import 'package:recipe_hub/features/login/logic/cubit/login_cubit.dart';
import 'validation_todo_list.dart';

class AuthentecationForm extends StatefulWidget {
  const AuthentecationForm({super.key});

  @override
  State<AuthentecationForm> createState() => _AuthentecationFormState();
}

class _AuthentecationFormState extends State<AuthentecationForm> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomFormField(
            hintText: 'Email',
            validator: (val) => _baseValidatation(val, 'Email is required'),
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
          ValidationTodoList(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasDigits: hasDigits,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLenght: hasMinLenght,
          ),
          const SizedBox(height: 24.0),
          const Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text('Forget Password?'),
          ),
          const SizedBox(height: 40),
          CustomTextBtn(
            text: 'Login',
            onPressed: () => _validateThenPerfromLogin(context),
          ),
        ],
      ),
    );
  }

  String? _baseValidatation(String? val, String errMessage) {
    if (val == null || val.isEmpty || !RegexManager.isEmailValid(val)) {
      return errMessage;
    }
    return null;
  }

  void _validateThenPerfromLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (formkey.currentState!.validate()) {
      loginCubit.emitLoginState(
        reqeuestBody: LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
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
