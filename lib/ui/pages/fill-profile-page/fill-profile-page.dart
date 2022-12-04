// ignore_for_file: file_names

import 'package:capy_store/ui/theme/app-color.dart';
import 'package:capy_store/ui/theme/app-styles.dart';
import 'package:flag/flag.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';


class FillProfilePage extends StatelessWidget {
  const FillProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                backgroundColor: const Color(0xff36353A),
                radius: 80,
                backgroundImage: const AssetImage("assets/images/user1.png" ,),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Color(0xff19191F),
                          )
                      )
                    ),
                  ]
                )
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: AppColors.textFieldBg,
                              filled: true,
                              hintText: 'Full Name',
                              hintStyle: AppStyles.greyText,
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: AppColors.textFieldBg,
                              filled: true,
                              hintText: 'Nickname',
                              hintStyle: AppStyles.greyText,
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: AppColors.textFieldBg,
                              filled: true,
                              hintText: 'Date of Birth',
                              hintStyle: AppStyles.greyText,
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: AppColors.textFieldBg,
                              filled: true,
                              hintText: 'Email',
                              hintStyle: AppStyles.greyText,
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: AppColors.textFieldBg,
                              filled: true,
                              hintText: 'Gender',
                              hintStyle: AppStyles.greyText,
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
                    ),
                    const SizedBox(height: 10,),
                  const SizedBox(
                    width: 400,
                    height: 50,
                    child: Divider(
                    height: 2,
                    color: Color(0xff36353A),
                    thickness: 2,
                  ),
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
                          'Continue' , 
                          style: AppStyles.whiteText,
                          ),
                        ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}