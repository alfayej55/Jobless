//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:jobless/helpers/route.dart';
// import 'package:jobless/utils/app_icons.dart';
//
// import '../../utils/app_colors.dart';
//
// class BottomMenu extends StatelessWidget {
//   final int menuIndex;
//
//   const BottomMenu(this.menuIndex, {super.key});
//
//   Color colorByIndex(ThemeData theme, int index) {
//     return index == menuIndex ? AppColors.primaryColor : theme.disabledColor;
//   }
//
//   BottomNavigationBarItem getItem(
//       String image, String title, ThemeData theme, int index) {
//     return BottomNavigationBarItem(
//         label: title,
//         icon: Padding(
//           padding: const EdgeInsets.only(top:8),
//           child: SvgPicture.asset(
//             image,
//             height: 24.0,
//             width: 24.0,
//             color: colorByIndex(theme, index),
//           ),
//         ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     List<BottomNavigationBarItem> menuItems = [
//       getItem(AppIcons.homeIcon, 'Home', theme, 0),
//       getItem(AppIcons.walletIcon, 'Wallet', theme, 1),
//       getItem(AppIcons.profileIcon, 'Profile', theme, 2),
//     ];
//
//     return Container(
//
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r)
//           ),
//           boxShadow: const [
//             BoxShadow(color:Colors.black38,spreadRadius:0,blurRadius: 10)
//           ]
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r)
//
//         ),
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//
//           selectedItemColor:Theme.of(context).primaryColor,
//           currentIndex: menuIndex,
//
//           onTap: (value) {
//             switch (value) {
//               case 0:
//                 Get.offAndToNamed(AppRoutes.homeScreen);
//                 break;
//               case 1:
//                 Get.offAndToNamed(AppRoutes.walletScreen);
//                 break;
//               case 2:
//                 Get.offAndToNamed(AppRoutes.profileScreen);
//                 break;
//             }
//           },
//           items: menuItems,
//         ),
//       ),
//     );
//   }
// }


import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:jobless/helpers/route.dart';
import 'package:jobless/utils/app_icons.dart';
import 'package:jobless/utils/style.dart';
import '../../utils/app_colors.dart';

class BottomMenu extends StatefulWidget {
  final int menuIndex;

  const BottomMenu(this.menuIndex, {super.key});

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  final PageController _pageController = PageController();


  Color colorByIndex(ThemeData theme, int index) {
    return index == widget.menuIndex ? Colors.white : Color(0xffC4D3F6);
  }

  BottomBarItem getItem(
      String image, String title, ThemeData theme, int index) {
    return   BottomBarItem(
      inActiveItem: SvgPicture.asset(
        image,
        height: 24.0,
        width: 24.0,
        color: colorByIndex(theme, index),
      ),
      activeItem: SvgPicture.asset(
        image,
        height: 24.0,
        width: 24.0,
        color: colorByIndex(theme, index),
      ),
      itemLabel: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    final NotchBottomBarController _controller = NotchBottomBarController(index:widget.menuIndex);
        final theme = Theme.of(context);
    List<BottomBarItem> menuItems = [
      getItem(AppIcons.homeIcon, 'Home', theme, 0),
      getItem(AppIcons.notificationIcon, 'Notifications', theme, 1),
      getItem(AppIcons.profileIcon, 'Profile', theme, 2),
    ];


    return AnimatedNotchBottomBar(
      notchColor: Get.theme.primaryColor,
      bottomBarItems: menuItems,
      color: Get.theme.primaryColor,
      bottomBarWidth: double.infinity,
      circleMargin: 5,
      showLabel: true,
      onTap: (value) {
        print("Page Change>>$value");
        switch (value) {
          case 0:
            Get.offAndToNamed(AppRoutes.homeScreen);
            break;
          case 1:
            Get.offAndToNamed(AppRoutes.walletScreen);
            break;
          case 2:
            Get.offAndToNamed(AppRoutes.profileScreen);
            break;
        }
      },
      itemLabelStyle: AppStyles.customSize(size: 12,color: Color(0xffC4D3F6)),
      kIconSize: 23.0,
      kBottomRadius: 10.0,
      notchBottomBarController: _controller,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
