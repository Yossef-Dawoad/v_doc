import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_hub/core/routes/routes.dart';
import 'package:recipe_hub/core/themes/colors.dart';
import 'package:recipe_hub/core/utils/dialogs/dialog_manage.dart';
import 'package:recipe_hub/core/utils/extensions/route.dart';
import 'package:recipe_hub/features/signup/logic/cubit/signup_cubit.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (prev, curr) =>
          curr is Loading || curr is Success || curr is Error,
      listener: (context, state) => state.whenOrNull(
        loading: () => showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(color: ColorsPalette.primaryColor),
          ),
        ),
        success: (response) => context.pushReplacementNamedRoute(Routes.home),
        error: (err) {
          context.popRoute();
          customDialogPopUp(
            context,
            err.toString(),
            DialogType.alert,
          );
          debugPrint(err.toString());
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
