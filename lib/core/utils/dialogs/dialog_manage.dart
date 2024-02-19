import 'package:flutter/material.dart';
import 'package:recipe_hub/core/themes/styles.dart';

enum DialogType {
  info('Info', Icons.info),
  loading('Loading', Icons.replay_outlined),
  alert('Alert', Icons.add_alert_rounded),
  confirm('Confirm', Icons.add_task_outlined);

  const DialogType(
    this.label,
    this.icon,
  );

  final String label;
  final IconData icon;

  Color get color => switch (this) {
        DialogType.info => Colors.grey,
        DialogType.loading => Colors.blue,
        DialogType.alert => Colors.red,
        DialogType.confirm => Colors.green,
      };
}

customDialogPopUp(
  BuildContext context,
  String message, [
  bool barrierDismissible = false,
]) =>
    showDialog(
      context: context,
      builder: (context) => const CustomBasicDialog(description: 'alert'),
      barrierDismissible: barrierDismissible,
    );

class CustomBasicDialog extends StatelessWidget {
  const CustomBasicDialog({
    super.key,
    this.dialogType = DialogType.info,
    this.onConfirm,
    required this.description,
  });

  final String description;
  final DialogType dialogType;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: dialogType.color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(dialogType.icon),
                const SizedBox(width: 8.0),
                Text(
                  dialogType.label,
                  style: TextStyles.f24w700white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Text(description),
          const SizedBox(height: 16.0),
          switch (dialogType) {
            DialogType.info => _buildTextBtn(context, 'Ok'),
            DialogType.confirm => Row(
                children: [
                  _buildTextBtn(context, 'Cancel'),
                  _buildTextBtn(context, 'Ok', onConfirm),
                ],
              ),
            _ => const Text('OK'),
          },
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }

  _buildTextBtn(
    BuildContext context,
    String text, [
    VoidCallback? onPressed,
  ]) =>
      TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        onPressed: onPressed ?? Navigator.of(context).pop,
        child: Text(text),
      );
}
