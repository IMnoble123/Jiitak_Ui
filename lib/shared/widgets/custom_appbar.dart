import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jitak_project/gen/assets.gen.dart';
import 'package:jitak_project/gen/colors.gen.dart';

import '../../gen/fonts.gen.dart';
import '../text_widgets/build_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 13.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 33.h,
                width: 241.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorName.colorTextFormField),
                child: BuildText(
                  text: '北海道, 札幌市',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPmedium,
                  fontSize: 12.sp,
                ),
              ),
              Assets.icons.filterIcon.image(width: 32.49.w, height: 32.49.h),
              Assets.images.lovered.image(width: 28.w, height: 25.h)
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 33.h,
            width: 375.w,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColorName.colorPrimary, ColorName.colorSecondary]),
            ),
            child: Center(
              child: BuildText(
                text: '2022年 5月 26日（木）',
                color: ColorName.textColor,
                family: FontFamily.natoSansJPmedium,
                fontSize: 14.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
