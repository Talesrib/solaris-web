import 'package:sollaris_web_flutter/exports.dart';

extension SolarisFonts on Text {
  Text title([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: color ?? SollarisColors.neutral200);
    return Text(
      data!,
      style: textStyle.merge(style),
    );
  }

  Text mainBold([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: color ?? SollarisColors.neutral200);
    return Text(
      data!,
      style: textStyle.merge(style),
    );
  }

  Text main([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: color ?? SollarisColors.neutral200);
    return Text(
      data!,
      style: textStyle.merge(style),
    );
  }
}
