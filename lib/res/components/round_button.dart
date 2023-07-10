
import 'package:flutter/material.dart';
import 'package:mvvm_getx/res/colors/app_colors.dart';
import 'package:mvvm_getx/res/fonts/app_fonts.dart';

class RoundButton extends StatelessWidget {
  final bool isLoading;
  final String title;
  final double height,width;
  final VoidCallback onPressed;
  final Color textColor,buttonColor;

  const RoundButton({Key? key,
     this.isLoading=false,
    required this.title,
     this.height=40,
     this.width=60,
    required this.onPressed,
     this.textColor=AppColor.primaryTextColor,
     this.buttonColor=AppColor.primaryButtonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
  height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),

        ),
        child: isLoading? const Center(child: CircularProgressIndicator(),):
        Center(
          child: Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColor.whiteColor,
              fontFamily: AppFonts.roboto_thin,
              fontWeight: FontWeight.bold),),
        )
        ,
      ),
    );
  }
}
