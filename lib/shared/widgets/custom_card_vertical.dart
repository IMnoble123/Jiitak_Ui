import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../text_widgets/build_text.dart';

class CustomCardVertical extends StatelessWidget {
  Image image;
  Icon icon;
  final VoidCallback ontap;
  CustomCardVertical(
      {super.key,
      required this.image,
      required this.icon,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.r),
      child: Stack(
        children: [
          SizedBox(
            width: 325.w,
            height: 388.h,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 186.h,
                    width: 325.w,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: image.image, fit: BoxFit.cover),
                        color: Colors.black),
                  ),
                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h),
                        BuildText(
                          text: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                          color: ColorName.textColor,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 13.sp,
                          maxLines: 2,
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildText(
                              text: '介護付き有料老人ホーム',
                              color: ColorName.colorPrimary,
                              family: FontFamily.natoSansJPmedium,
                              fontSize: 10.sp,
                            ),
                            BuildText(
                              text: '¥ 6,000',
                              color: ColorName.textColor,
                              family: FontFamily.natoSansJPBold,
                              fontSize: 16.sp,
                            ),
                          ],
                        ),
                        BuildText(
                          text: '5月 31日（水）08 : 00 ~ 17 : 00',
                          color: ColorName.textColor,
                          family: FontFamily.natoSansJPRegular,
                          fontSize: 12.sp,
                        ),
                        BuildText(
                          text: '北海道札幌市東雲町3丁目916番地17号',
                          color: ColorName.textColor,
                          family: FontFamily.natoSansJPRegular,
                          fontSize: 12.sp,
                        ),
                        BuildText(
                          text: '交通費 300円',
                          color: ColorName.textColor,
                          family: FontFamily.natoSansJPRegular,
                          fontSize: 12.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildText(
                              text: '住宅型有料老人ホームひまわり倶楽部',
                              color: const Color.fromARGB(255, 157, 155, 155),
                              family: FontFamily.natoSansJPRegular,
                              fontSize: 12.sp,
                            ),
                            IconButton(onPressed: ontap, icon: icon)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -3,
            top: 140,
            child: Container(
              height: 20.h,
              width: 74.w,
              color: ColorName.redColor,
              child: Center(
                child: BuildText(
                  text: '本日まで',
                  color: ColorName.colorWhite,
                  family: FontFamily.natoSansJPBold,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
