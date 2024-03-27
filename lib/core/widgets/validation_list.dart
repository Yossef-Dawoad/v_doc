import 'package:flutter/material.dart';
import 'package:recipe_hub/core/themes/styles.dart';

class AuthValidationList extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasDigits;
  final bool hasSpecialCharacters;
  final bool hasMinLenght;

  const AuthValidationList({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasDigits,
    required this.hasSpecialCharacters,
    required this.hasMinLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildValidationItem(
          description: 'At least 1 lowercase letter',
          hasValidation: hasLowerCase,
        ),
        const SizedBox(height: 2.0),
        _buildValidationItem(
          description: 'At least 1 uppercase letter',
          hasValidation: hasUpperCase,
        ),
        const SizedBox(height: 2.0),
        _buildValidationItem(
          description: 'At least 1 Digit',
          hasValidation: hasDigits,
        ),
        const SizedBox(height: 2.0),
        _buildValidationItem(
          description: 'At least 1 special character',
          hasValidation: hasSpecialCharacters,
        ),
        const SizedBox(height: 2.0),
        _buildValidationItem(
          description: '8 character minimum lenght',
          hasValidation: hasMinLenght,
        ),
        const SizedBox(height: 2.0),
      ],
    );
  }

  Widget _buildValidationItem({
    required String description,
    required bool hasValidation,
  }) {
    return Row(
      children: [
        Visibility(
          visible: hasValidation,
          child: const Icon(
            Icons.check,
            color: Colors.green,
            size: 18,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          description,
          style: TextStyles.f13w400gray.copyWith(
            decoration: hasValidation ? TextDecoration.lineThrough : null,
            decorationThickness: 2.0,
          ),
        ),
      ],
    );
  }
}
