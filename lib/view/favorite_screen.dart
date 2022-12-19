

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_widgets/custom_text_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTextWidget
        (
        text: 'This is favorite screen',
        fontFamily: 'Pacifico',
        color: Colors.red,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        alignment: Alignment.center,
      ),
    );
  }
}
