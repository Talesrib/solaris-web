import 'package:sollaris_web_flutter/exports.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 100.h,
      color: SollarisColors.neutral100,
      padding: const EdgeInsets.all(70),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _titleSection(),
            _filterSection(),
            _contentSection(),
          ],
        ),
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      height: 71,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 24),
      decoration: const BoxDecoration(
        color: SollarisColors.neutral0,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: const Text('MEU PERFIL').title(SollarisColors.neutral300),
    );
  }

  Widget _filterSection() {
    return Container(
      height: 208,
      margin: const EdgeInsets.only(top: 48),
      decoration: const BoxDecoration(
        color: SollarisColors.neutral0,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
    );
  }

  Widget _contentSection() {
    return Container(
      height: 528,
      margin: const EdgeInsets.only(top: 48),
      decoration: const BoxDecoration(
        color: SollarisColors.neutral0,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
    );
  }
}
