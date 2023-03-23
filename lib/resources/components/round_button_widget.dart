
import 'package:flutter/material.dart';
import 'package:mvvm_getx/resources/colors/app_colors.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({Key? key,
    this.loading = false,
    required this.title,
    this.height = 50,
    this.width = 100,
    this.borderRadius = 30,
    required this.onPress,
    this.textColor = AppColor.primaryTextColor,
    this.buttonColor = AppColor.primaryButtonColor
  }) : super(key: key);
  final bool loading;
  final String title;
  final double height,width,borderRadius;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: loading ?
            const Center(child: CircularProgressIndicator(),)
        : Center(
          child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColor.whiteColor),),
        ),
      ),
    );
  }
}
