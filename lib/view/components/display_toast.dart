import 'package:fluttertoast/fluttertoast.dart';
import 'package:sollaris_web_flutter/exports.dart';

void displayToast(
  String message, {
  bool success = true,
}) async {
  await Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.CENTER,
    webPosition: 'center',
    timeInSecForIosWeb: 3,
    backgroundColor:
        success ? SollarisColors.success100 : SollarisColors.error100,
    webBgColor: success
        ? SollarisColors.success100
        : SollarisColors.error100,
    textColor: Colors.white,
    fontSize: 16,
  );
}
