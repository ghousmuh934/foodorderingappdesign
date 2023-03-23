import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/assets/icons_assets.dart';
import '../../../resources/colors/app_colors.dart';

class IconBoxWidget extends StatelessWidget {
  const IconBoxWidget({Key? key, required this.iconName, this.color, required this.text, this.textColor}) : super(key: key);

  final String iconName;
  final Color? color, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color:  color ?? AppColor.appColor.withOpacity(0.35),
              borderRadius: BorderRadius.circular(15.r)
          ),
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Center(
                child: Image.asset(
                  iconName,
                  width: 31.18.w,
                  height: 31.18.h,
                )
            ),
          ),
        ),
        SizedBox(height: 7.63.h,),
        Text(text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: textColor ?? AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
