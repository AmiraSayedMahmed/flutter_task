

import 'package:flutter/material.dart';
import 'package:flutter_task/view/custom_widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTextWidget
        (
        text: 'This is category screen',
        fontFamily: 'Pacifico',
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        alignment: Alignment.center,
      ),
    );
  }
}
