import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobless/helpers/route.dart';
import 'package:jobless/views/base/bottom_menu..dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
import '../../base/custom_text_field.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  final TextEditingController _searchCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomMenu(2),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Message',
              style: AppStyles.h2(
                family: "Schuyler",
              )),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              /// Crease Group Button
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.messageGroupCreaateScreen);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                      width: 190.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8).r,
                        color: AppColors.primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.addIcon),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Create a new group',
                                style: AppStyles.h5(
                                  color: Colors.white,
                                  family: "Schuyler",
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 16.h,
              ),

              /// Search
              CustomTextField(
                contentPaddingVertical: 15.h,
                hintText: "search",
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SvgPicture.asset(
                    AppIcons.searchIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                controller: _searchCtrl,
              ),
              SizedBox(
                height: 16.h,
              ),

              /// Friend Listv

              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {
                        Get.toNamed(AppRoutes.messageInboxScreen);
                      },
                      leading: CustomNetworkImage(
                        imageUrl:
                            "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                        height: 54.h,
                        width: 54.w,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      title: Text('AL-Fayej ',
                          style: AppStyles.h5(
                            family: "Schuyler",
                          )),
                      subtitle: Row(
                        children: [
                          Text('Oke Fine ',
                              style: AppStyles.h6(
                                family: "Schuyler",
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text('08:30 Am',
                              style: AppStyles.h6(
                                family: "Schuyler",
                              )),
                        ],
                      ),
                    );
                  },
                  /// Gropu Section
                  separatorBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {
                        Get.toNamed(AppRoutes.groupInboxScreen);
                      },
                      leading: CustomNetworkImage(
                        imageUrl:
                            "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                        height: 54.h,
                        width: 54.w,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      title: Text('jobless community',
                          style: AppStyles.h5(
                            family: "Schuyler",
                          )),
                      subtitle: Row(
                        children: [
                          Text('Oke Fine ',
                              style: AppStyles.h6(
                                family: "Schuyler",
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text('08:30 Am',
                              style: AppStyles.h6(
                                family: "Schuyler",
                              )),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
