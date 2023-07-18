import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/colors/app_colors.dart';
import 'package:mvvm_getx/res/fonts/app_fonts.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const GeneralExceptionWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
            size: 56,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
              'general_exception'.tr,
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: size.height * .15,
          ),
          InkWell(
            onTap: widget.onPressed,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                "Retry",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.whiteColor,
                    fontFamily: AppFonts.roboto_thin,
                    fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
