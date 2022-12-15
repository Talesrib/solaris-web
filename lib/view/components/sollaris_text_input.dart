import 'package:sollaris_web_flutter/exports.dart';

class SolarisTextInput extends StatelessWidget {
  const SolarisTextInput({
    super.key,
    required this.width,
    required this.height,
    required this.textEditingController,
    required this.hint,
  });

  final double width;
  final double height;
  final TextEditingController textEditingController;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: SollarisColors.neutral0,
        border: Border.all(color: SollarisColors.neutral200),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextFormField(
        cursorColor: SollarisColors.primary100,
        controller: textEditingController,
        style: GoogleFonts.montserrat(
            color: SollarisColors.neutral300, fontSize: 14),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            height: 0,
            fontSize: 0,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 16,
            color: SollarisColors.neutral300,
            fontWeight: FontWeight.w400,
            fontFamily: 'OpenSans',
          ),
          isDense: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
