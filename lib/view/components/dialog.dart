import 'package:sollaris_web_flutter/exports.dart';

Future<void> dialog(
  BuildContext context,
  Function() accept,
  String content,
) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        title: const Text('AVISO').mainBold(SollarisColors.neutral300),
        content: Text(
          content,
        ).main(SollarisColors.neutral300),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: SollarisColors.error100,
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  accept();
                },
                child: const Icon(
                  Icons.check,
                  color: SollarisColors.link100,
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}
