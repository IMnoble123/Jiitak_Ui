import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jitak_project/gen/assets.gen.dart';
import 'package:latlong2/latlong.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../shared/text_widgets/build_text.dart';

class EditProfileScreen extends StatelessWidget {
  final mapController = MapController();
  EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidet(),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildText(
                text: '店舗名*',
                color: ColorName.textColor,
                family: FontFamily.natoSansJPmedium,
                fontSize: 14.sp,
              ),
              Container(
                height: 38.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.colorWhite),
                  color: ColorName.colorTextFormField,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BuildText(
                  text: 'Mer キッチン',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPRegular,
                  fontSize: 16.sp,
                ),
              ),
              BuildText(
                text: '代表担当者名*',
                color: ColorName.textColor,
                family: FontFamily.natoSansJPmedium,
                fontSize: 14.sp,
              ),
              Container(
                height: 38.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.colorWhite),
                  color: ColorName.colorTextFormField,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BuildText(
                  text: '林田　絵梨花',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPRegular,
                  fontSize: 16.sp,
                ),
              ),
              BuildText(
                text: '店舗電話番号*',
                color: ColorName.textColor,
                family: FontFamily.natoSansJPmedium,
                fontSize: 14.sp,
              ),
              Container(
                height: 38.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.colorWhite),
                  color: ColorName.colorTextFormField,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BuildText(
                  text: '123-45678910',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPRegular,
                  fontSize: 16.sp,
                ),
              ),
              BuildText(
                text: '店舗住所*',
                color: ColorName.textColor,
                family: FontFamily.natoSansJPmedium,
                fontSize: 14.sp,
              ),
              Container(
                height: 38.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.colorWhite),
                  color: ColorName.colorTextFormField,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BuildText(
                  text: '大分県豊後高田市払田791-13',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPRegular,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 219.h,
                width: 335.w,
                child: FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    interactiveFlags: InteractiveFlag.doubleTapZoom,
                    center: const LatLng(35.183334, 136.899994),
                    zoom: 9.2,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                  ],
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: '店舗外観',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                      children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 166, 72, 37),
                          fontSize: 14.sp,
                          fontFamily: FontFamily.natoSansJPRegular,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: '（最大3枚まで）',
                      style: TextStyle(
                        color: ColorName.lightTextColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                    ),
                  ])),
              Row(
                children: [
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimgeone.image().image)),
                  ),
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimgeone.image().image)),
                  )
                ],
              ),
              RichText(
                  text: TextSpan(
                      text: '店舗内観',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                      children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 166, 72, 37),
                          fontSize: 14.sp,
                          fontFamily: FontFamily.natoSansJPRegular,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(
                        color: ColorName.lightTextColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                    ),
                  ])),
              Row(
                children: [
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimagethree.image().image)),
                  ),
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimagefour.image().image)),
                  )
                ],
              ),
              RichText(
                  text: TextSpan(
                      text: 'メニュー写真',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                      children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 166, 72, 37),
                          fontSize: 14.sp,
                          fontFamily: FontFamily.natoSansJPRegular,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: '（1枚〜3枚ずつ追加してください）',
                      style: TextStyle(
                        color: ColorName.lightTextColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                    ),
                  ])),
              Row(
                children: [
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimagefive.image().image)),
                  ),
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimgsix.image().image)),
                  ),
                  Container(
                    width: 91,
                    height: 91,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.cimgsix.image().image)),
                  )
                ],
              ),

// final section

              RichText(
                  text: TextSpan(
                      text: '来店プレゼント名',
                      style: TextStyle(
                        color: ColorName.textColor,
                        fontSize: 14.sp,
                        fontFamily: FontFamily.natoSansJPRegular,
                      ),
                      children: [
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 166, 72, 37),
                          fontSize: 14.sp,
                          fontFamily: FontFamily.natoSansJPRegular,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ])),
              Container(
                height: 38.h,
                width: 335.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.colorWhite),
                  color: ColorName.colorTextFormField,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: BuildText(
                  text: 'いちごクリームアイスクリーム, ジュース',
                  color: ColorName.textColor,
                  family: FontFamily.natoSansJPRegular,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 10.h),
              appButton(),
            ],
          ),
        ),
      )),
    );
  }

  Widget appButton() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ColorName.redColor, ColorName.colorWhite])),
      width: 335.w,
      height: 46.h,
      child: Center(
        child: BuildText(
          text: '編集を保存',
          color: ColorName.colorWhite,
          family: FontFamily.natoSansJPBold,
          fontSize: 14.sp,
        ),
      ),
    );
  }

// image picker widget

  // Widget imageWidget(Image image, VoidCallback ontap) {
  //   return Container(
  //     height: 91.h,
  //     width: 91.h,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(image: image.image),
  //       borderRadius: BorderRadius.circular(5),
  //     ),
  //     child: InkWell(
  //       onTap: ontap,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           BuildText(
  //             text: '写真を追加',
  //             color: ColorName.lightTextColor,
  //             family: FontFamily.natoSansJPmedium,
  //             fontSize: 12.sp,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  AppBar appBarWidet() {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 17,
            color: ColorName.lightTextColor,
          )),
      elevation: 0,
      centerTitle: true,
      title: BuildText(
        text: '店舗プロフィール編集',
        color: ColorName.textColor,
        family: FontFamily.natoSansJPmedium,
        fontSize: 15.sp,
      ),
      actions: [
        Assets.icons.notification.image(height: 28.h, width: 28.h),
      ],
    );
  }
}
