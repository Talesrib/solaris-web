// ignore_for_file: must_be_immutable

import 'package:sollaris_web_flutter/exports.dart';

class SollarisButton extends StatelessWidget {
  SollarisButton({
    super.key,
    required this.height,
    required this.label,
    required this.onPressed,
    required this.buttonType,
    this.iconData,
    this.iconSize,
    this.iconColor,
  });

  final double height;
  final String label;
  final Function() onPressed;
  final ButtonType buttonType;
  IconData? iconData;
  double? iconSize;
  Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      onPressed: onPressed,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: buttonType == ButtonType.primaryButton
              ? SollarisColors.primary100
              : SollarisColors.neutral200,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label.toUpperCase()).main(SollarisColors.neutral0),
            (iconData != null && iconColor != null && iconSize != null)
                ? Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Icon(
                      iconData,
                      size: iconSize,
                      color: iconColor,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

enum ButtonType {
  primaryButton,
  secondaryButton,
}
