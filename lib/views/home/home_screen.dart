import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jitak_project/gen/assets.gen.dart';
import 'package:jitak_project/gen/colors.gen.dart';
import 'package:jitak_project/shared/widgets/custom_appbar.dart';
import 'package:jitak_project/shared/widgets/custom_card_vertical.dart';
import 'package:jitak_project/views/home/home_controller.dart';
import '../../gen/fonts.gen.dart';
import '../../shared/text_widgets/build_text.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.sizeOf(context);
    List<String> textJs = [
      '木',
      '金',
      '土',
      '日',
      '月',
      '火',
      '水',
      '金',
    ];
    List<String> nbrJs = [
      '26',
      '27',
      '28',
      '29',
      '30',
      '31',
      '1',
      '2',
    ];

    List<Image> partimeImag = [
      Assets.images.partimeone.image(),
      Assets.images.partimetwo.image(),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(screensize.width, 100.h),
            child: const CustomAppBar()),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 67.h,
                width: 375.w,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 8.w),
                  itemCount: textJs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Obx(() => customDateView(textJs[index], nbrJs[index],
                        homeController.selectedIndexes.contains(index), index));
                  },
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 4.h),
                  itemCount: partimeImag.length,
                  itemBuilder: (context, index) {
                    return Obx(() => CustomCardVertical(
                        image: partimeImag[index],
                        ontap: () => homeController.toggleFavorite(index),
                        icon: homeController.favIndex.contains(index)
                            ? const Icon(
                                Icons.favorite,
                                color: ColorName.redColor,
                              )
                            : const Icon(Icons.favorite_border_outlined)));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customDateView(
      String text1, String text2, bool isSelected, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              homeController.toggleSelection(index);
            },
            child: Container(
              height: 67.h,
              width: 44.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isSelected
                      ? ColorName.colorPrimary
                      : ColorName.colorWhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 4.h),
                  BuildText(
                    text: text1,
                    color:
                        isSelected ? ColorName.colorWhite : ColorName.textColor,
                    family: FontFamily.natoSansJPBold,
                    fontSize: 17.sp,
                  ),
                  BuildText(
                    text: text2,
                    color:
                        isSelected ? ColorName.colorWhite : ColorName.textColor,
                    family: FontFamily.natoSansJPBold,
                    fontSize: 17.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
