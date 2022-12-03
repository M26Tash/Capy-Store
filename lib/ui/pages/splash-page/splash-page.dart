import 'package:capy_store/ui/pages/preview-page/preview-page.dart';
import 'package:capy_store/ui/theme/app-color.dart';
import 'package:flutter/cupertino.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const PreviewPage(),
      imageSrc: 'assets/images/main-icon.png',
      duration: 10,
      imageSize: 300,
      backgroundColor: AppColors.bg,
      );
  }
}