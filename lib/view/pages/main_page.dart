import 'package:sollaris_web_flutter/exports.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(
        builder: (buildContext, orientation, deviceType) {
          return Row(
            children: const [
              SollarisLateralMenu(),
              SelectedPage(),
            ],
          );
        },
      ),
    );
  }
}
