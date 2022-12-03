import 'package:capy_store/ui/pages/fill-profile-page/fill-profile-page.dart';
import 'package:capy_store/ui/pages/preview-page/preview-page.dart';
import 'package:capy_store/ui/pages/sign-up-page/sign-up-page.dart';
import 'package:capy_store/ui/pages/splash-page/splash-page.dart';
import 'package:flutter/material.dart';

class CapyStore extends StatelessWidget {
  const CapyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: FillProfilePage()
      ),
    );
  }
}