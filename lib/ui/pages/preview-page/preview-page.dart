import 'package:capy_store/ui/pages/sign-up-page/sign-up-page.dart';
import 'package:capy_store/ui/theme/app-color.dart';
import 'package:capy_store/ui/theme/app-styles.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
              'assets/images/image.jpg',
              fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Container(
                        height: 260,
                        width: 400,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text(
                                'Welcome to Capy Store! 👋' , 
                                style: AppStyles.main,
                                textAlign: TextAlign.center,
                                ),
                            ),
                              const SizedBox(
                                height: 10,
                              ),
                            const Text(
                              'Let me briefly talk about the app. In this Capy Store you can buy various gaming devices, consoles,games and add-ons including' , 
                              style: AppStyles.previewSubTitle,
                              textAlign: TextAlign.center,
                              ),
                              const Spacer(),
                              Container(
                                height: 50,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColors.primaryColor
                                ),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return const SignUpPage();
                                      },)
                                    );
                                  },
                                  style: const ButtonStyle(
                                    overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
                                  ),
                                  child: 
                                  const Text(
                                    'Continue' , 
                                    style: AppStyles.whiteText,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            
          ],
        ),
    );
  }
}