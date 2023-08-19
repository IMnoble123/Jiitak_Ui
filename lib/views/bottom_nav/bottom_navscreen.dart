import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jitak_project/gen/assets.gen.dart';
import 'package:jitak_project/gen/colors.gen.dart';
import 'package:jitak_project/views/bottom_nav/chat_screen.dart';
import 'package:jitak_project/views/home/home_screen.dart';
import 'package:jitak_project/views/profile/editprofile_screen.dart';
import 'package:jitak_project/views/stamp_details/stamp_screen.dart';
import '../../gen/fonts.gen.dart';
import '../../shared/text_widgets/build_text.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentTab = 0;

  List screens = [
    HomeScreen(),
    StampScreen(),
    const ChatScreen(),
    EditProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          elevation: 0,
          backgroundColor: ColorName.colorPrimary,
          child: Assets.icons.scanIcon.image(),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 75.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 0
                              ? ColorName.colorPrimary
                              : ColorName.textColor,
                        ),
                        BuildText(
                          text: 'さがす',
                          color: currentTab == 0
                              ? ColorName.colorPrimary
                              : ColorName.textColor,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 8.sp,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = StampScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.managementJob.image(
                            color: currentTab == 1
                                ? ColorName.colorPrimary
                                : ColorName.textColor),
                        BuildText(
                          text: 'お仕事',
                          color: currentTab == 1
                              ? ColorName.colorPrimary
                              : ColorName.textColor,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 8.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ChatScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.chatIcon.image(
                            color: currentTab == 2
                                ? ColorName.colorPrimary
                                : ColorName.textColor),
                        BuildText(
                          text: 'チャット',
                          color: currentTab == 2
                              ? ColorName.colorPrimary
                              : ColorName.textColor,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 8.sp,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40.w,
                    onPressed: () {
                      setState(() {
                        currentScreen = EditProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.account.image(
                            color: currentTab == 3
                                ? ColorName.colorPrimary
                                : ColorName.textColor),
                        BuildText(
                          text: 'マイページ',
                          color: currentTab == 3
                              ? ColorName.colorPrimary
                              : ColorName.textColor,
                          family: FontFamily.natoSansJPmedium,
                          fontSize: 8.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
