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
  DialogType dialogType = DialogType.info,
  bool barrierDismissible = false,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
]) =>
    showDialog(
      context: context,
      builder: (context) => CustomBasicDialog(
        description: message,
        dialogType: dialogType,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
      barrierDismissible: barrierDismissible,
    );

class CustomBasicDialog extends StatelessWidget {
  const CustomBasicDialog({
    super.key,
    required this.description,
    this.dialogType = DialogType.info,
    this.onConfirm,
    this.onCancel,
  });

  final String description;
  final DialogType dialogType;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

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
            // width: MediaQuery.of(context).size.width * 0.4,
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
                Icon(
                  dialogType.icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 8.0),
                Text(
                  dialogType.label,
                  style: TextStyles.f18w400black.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
            child: Text(description),
          ),
          const SizedBox(height: 16.0),
          switch (dialogType) {
            DialogType.info => _buildTextBtn(context, 'Ok', onConfirm),
            DialogType.confirm => Row(
                children: [
                  _buildTextBtn(context, 'Cancel', onCancel),
                  _buildTextBtn(context, 'Ok', onConfirm),
                ],
              ),
            _ => _buildTextBtn(context, 'Ok', onConfirm),
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
