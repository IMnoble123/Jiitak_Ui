import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jitak_project/gen/assets.gen.dart';
import 'package:jitak_project/gen/colors.gen.dart';

import '../../gen/fonts.gen.dart';
import '../../shared/text_widgets/build_text.dart';

class StampScreen extends StatelessWidget {
  StampScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: ColorName.purpleColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.r),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios,
                                color: ColorName.colorWhite, size: 17)),
                        BuildText(
                          text: 'スタンプカード詳細',
                          color: ColorName.colorWhite,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 14.sp,
                        ),
                        Assets.icons.minusIcon.image()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildText(
                          text: 'Mer キッチン',
                          color: ColorName.colorWhite,
                          family: FontFamily.natoSansJPBold,
                          fontSize: 16.sp,
                        ),
                        BuildText(
                          text: '現在の獲得数 30 個',
                          color: ColorName.colorWhite,
                          family: FontFamily.natoSansJPRegular,
                          fontSize: 14.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                width: 375.w,
                decoration: BoxDecoration(
                  color: ColorName.colorWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      carouselWidet(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: BuildText(
                              text: 'スタンプ獲得履歴',
                              color: ColorName.textColor,
                              family: FontFamily.natoSansJPBold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: dateText.length,
                          itemBuilder: (context, index) {
                            return listWidget(dateText[index],
                                secondText[index], taskText[index]);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> dateText = [
    '2021/11/18',
    '2021/11/17',
    '2021/11/16',
    '2021/11/15',
    '2021/11/13',
    '2021/11/12',
  ];
  List<String> secondText = [
    'スタンプを獲得しました。',
    'スタンプを獲得しました。',
    'スタンプを獲得しました。',
    'スタンプを獲得しました。',
    'スタンプを獲得しました。',
    'スタンプを獲得しました。',
  ];
  List<String> taskText = [
    '1 個',
    '1 個',
    '1 個',
    '1 個',
    '1 個',
    '1 個',
  ];

  Widget listWidget(String text1, String text2, String text3) {
    return SizedBox(
      height: 63.h,
      width: 343.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            text: text1,
            color: ColorName.lightTextColor,
            family: FontFamily.natoSansJPmedium,
            fontSize: 12.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildText(
                text: text2,
                color: ColorName.textColor,
                family: FontFamily.natoSansJPRegular,
                fontSize: 14.sp,
              ),
              BuildText(
                text: text3,
                color: ColorName.textColor,
                family: FontFamily.natoSansJPBold,
                fontSize: 14.sp,
              ),
            ],
          )
        ],
      ),
    );
  }

  List<Image> carouselImage = [
    Assets.images.starsimg.image(),
    Assets.images.starsimg.image()
  ];

  Widget carouselWidet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider.builder(
            itemCount: carouselImage.length,
            itemBuilder: (context, index, realIndex) {
              return pageView(carouselImage[index]);
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
              height: 199.h,
              autoPlay: false,
              onPageChanged: (index, reason) {},
            )),
      ],
    );
  }

  Widget pageView(Image image) {
    return Container(
      height: 199.h,
      width: 317.w,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FittedBox(
          fit: BoxFit.cover,
          child: image,
        ),
      ),
    );
  }
}
