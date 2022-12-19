import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_widgets/custom_text_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTextWidget
        (
        text: 'This is News screen',
        fontFamily: 'Pacifico',
        color: Colors.cyan,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        alignment: Alignment.center,
      ),
    );
  }
}
