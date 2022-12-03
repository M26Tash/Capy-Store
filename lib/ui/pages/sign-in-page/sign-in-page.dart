import 'package:capy_store/ui/pages/sign-up-page/sign-up-page.dart';
import 'package:capy_store/ui/theme/app-color.dart';
import 'package:capy_store/ui/theme/app-styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icons_plus/icons_plus.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isChecked = false;
  bool currentState = false;
  bool _obscureText = true;

  String? _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return AppColors.primaryColor;
    }
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/main-icon.png',
                    height: 200,
                    width: 200,
                    ),
                  const Text(
                    'Login to Your Account ',
                    style: AppStyles.main,
                    ),
                   Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 30
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent 
                      ),
                      width: 380,
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          fillColor: AppColors.textFieldBg,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: AppStyles.greyText,
                          prefixIcon: const Icon(
                            Icons.email_rounded , 
                            color: AppColors.textFieldIcon,
                            ),
                          prefixIconColor: Colors.amber,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          counterStyle: const TextStyle(
                            color: AppColors.primaryColor
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: AppColors.primaryColor
                          ), 
                        ),
                      ),
                      ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 20
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent 
                      ),
                      width: 380,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            currentState = true;
                          });
                        },
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          fillColor: AppColors.textFieldBg,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: AppStyles.greyText,
                          prefixIcon: Icon(
                            Icons.lock_rounded , 
                            color: currentState == false ? AppColors.textFieldIcon : AppColors.primaryColor,
                            ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _toggle();
                              });
                            },
                            icon: _obscureText == true ? const Icon(
                              Icons.visibility_off,
                              color: AppColors.textFieldIcon,
                              ) : const Icon(
                                Icons.visibility,
                                color: AppColors.textFieldIcon,
                                ),
                            splashColor: Colors.transparent,
                          ),
                          prefixIconColor: Colors.amber,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          counterStyle: const TextStyle(
                            color: AppColors.primaryColor
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: AppColors.primaryColor
                          ), 
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                    value: isChecked,
                    activeColor: AppColors.primaryColor, 
                    fillColor: MaterialStateProperty.resolveWith(
                      getColor,
                      ),
                    onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    }
                      );
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
        
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10
                    ),
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      child: TextButton(
                        style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll<Color>(
                            Colors.transparent,
                            ),
                        ),
                        onPressed: () {
                          
                        }, 
                        child: const Text(
                          'Sign in' , 
                          style: AppStyles.whiteText,
                          ),
                        ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: 
                          //   (context) => const SignInPage(),)
                          // );
                        },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: AppColors.textFieldIcon,
                        ),
                        const SizedBox(width: 10,),
                        const Text(
                          'or continue with' , 
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 1,
                          width: 100,
                          color: AppColors.textFieldIcon,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.textFieldBg,
                            border: Border.all(
                              color: AppColors.textFieldIcon.withOpacity(.3),
                              ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.transparent,
                                  child: BrandLogo(BrandLogos.facebook_f),
                                  ),
                                  
                                ],
                              )
                            ],
                          )
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.textFieldBg,
                            border: Border.all(
                              color: AppColors.textFieldIcon.withOpacity(.3),
                              ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.transparent,
                                  child: BrandLogo(BrandLogos.google),
                                  ),
                                  
                                ],
                              )
                            ],
                          )
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.textFieldBg,
                            border: Border.all(
                              color: AppColors.textFieldIcon.withOpacity(.3),
                              ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.transparent,
                                  child: BrandLogo(BrandLogos.twitch),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                        
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: 
                            (context) => const SignUpPage(),)
                          );
                        },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50
                      ),
                      child: Row(
                        children: const [
                          Text(
                            '''Haven't account yet?''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                            ),
                            SizedBox(width: 10,),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}