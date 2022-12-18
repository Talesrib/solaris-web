// ignore_for_file: must_be_immutable

import 'package:sollaris_web_flutter/exports.dart';

class SollarisDropdown extends StatefulWidget {
  SollarisDropdown({
    super.key,
    required this.width,
    required this.height,
    required this.valueSelected,
    required this.values,
    this.mutable,
  });

  final double width;
  final double height;
  final ValueNotifier<String> valueSelected;
  final List<String> values;
  bool? mutable;

  @override
  State<SollarisDropdown> createState() => _SollarisDropdownState();
}

class _SollarisDropdownState extends State<SollarisDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: SollarisColors.neutral0,
        border: Border.all(color: SollarisColors.neutral200),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: widget.mutable != false
          ? DropdownButton<String>(
              alignment: Alignment.topCenter,
              dropdownColor: SollarisColors.neutral0,
              menuMaxHeight: 250,
              isExpanded: true,
              value: widget.valueSelected.value,
              borderRadius: BorderRadius.circular(15),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 24,
                color: SollarisColors.neutral300,
              ),
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: SollarisColors.neutral300),
              underline: Container(
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                setState(() {
                  widget.valueSelected.value = value!;
                });
              },
              items:
                  widget.values.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value).main(SollarisColors.neutral300),
                );
              }).toList(),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.valueSelected.value,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: SollarisColors.neutral300),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                  color: SollarisColors.neutral300,
                )
              ],
            ),
    );
  }
}
