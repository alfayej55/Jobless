
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/style.dart';
import '../../base/casess_network_image.dart';
import '../../base/custom_text_field.dart';

class MessageInboxScreen extends StatefulWidget {
  MessageInboxScreen({super.key});

  @override
  State<MessageInboxScreen> createState() => _MessageInboxScreenState();
}

class _MessageInboxScreenState extends State<MessageInboxScreen> {

  TextEditingController _msgCtrl=TextEditingController();

  var receiverId = "";
  var receiverName = "";
  var receiverImage = "";
  var receiverRole = "";
  var currentUserId = "";

  @override
  void initState() {


    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();

                        },
                        child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.transparent,
                            child: Icon(Icons.arrow_back_ios,size: 22,color: AppColors.textColor,)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomNetworkImage(
                        imageUrl: "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                        //borderRadius: BorderRadius.circular(12.r),
                        height: 50.h,
                        width: 50.w,
                        boxShape: BoxShape.circle,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Basar Islam',
                            style: AppStyles.h5()
                          ),
                          Text(
                            "Jobless",
                            style: AppStyles.h6(
                                color: AppColors.dark2Color),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
        body: Column(
          children: [

     
            Expanded(
              child: Column(

                children: [
                  senderBubble(context,),
                  receiverBubble(context,),
                ],
              ),
            ),



            // GroupedListView<String, DateTime>(
            //   elements: _chatController.chatModelList,
            //   controller: _chatController.scrollController,
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   order: GroupedListOrder.DESC,
            //   itemComparator: (item1, item2) =>
            //       item1.createdAt!.compareTo(item2.createdAt!),
            //   groupBy: (InboxChatModel message) => DateTime(
            //       message.createdAt!.year,
            //       message.createdAt!.month,
            //       message.createdAt!.day
            //   ),
            //   reverse: true,
            //   shrinkWrap: true,
            //   // physics: const AlwaysScrollableScrollPhysics(),
            //   groupSeparatorBuilder: (DateTime date) {
            //     return const SizedBox();
            //   },
            //   itemBuilder: (context,String id) {
            //     return id == currentUserId
            //         ? senderBubble(context,)
            //         : receiverBubble(context,);
            //   },
            // ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20),
                child: Row(
                  children: [
                    ///>>>>>>>>>>>>>>>>>> Text Field >>>>>>>>>>>>>>>>>>>>
                    Expanded(
                        child: CustomTextField(
                          contentPaddingVertical: 15.h,
                          hintText: 'Sent Massage',
                          controller:_msgCtrl,
                          suffixIcon: InkWell(
                            onTap: (){
                              // _chatController.pickImage();
                            },
                            child: Padding(
                              padding: EdgeInsets.all( 12.w),
                              child: SvgPicture.asset(AppIcons.fileIcon,height: 16.h,width: 16.w,),
                            ),
                          ),
                        )),
                    SizedBox(width: 10.w,),

                    ///>>>>>>>>>>>>>>>>>> Sent Button >>>>>>>>>>>>>>>>>>>>
                    InkWell(
                      onTap: (){


                      },
                      child: Container(
                        height: 55.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          border: Border.all(
                              color: Get.theme.primaryColor.withOpacity(0.2)),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.sentIcon,
                            height: 24.h,
                            width: 24,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));


  }

  /// Sent Massage
  senderBubble(BuildContext context,) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: ChatBubble(
            clipper: ChatBubbleClipper3(
              type: BubbleType.sendBubble,
            ),
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            backGroundColor: AppColors.primaryColor,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.57,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fayej',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '10:12 Am',
                    // DateFormatHelper.formatTimeHHMM(chatModel.createdAt!),
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        CustomNetworkImage(
          imageUrl:
          "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNob3BwaW5nfGVufDB8fDB8fHww",
          height: 35,
          width: 35,
          boxShape: BoxShape.circle,
          border: Border.all(color: Get.theme.primaryColor, width: 1),
        ),
      ],
    );
  }

  /// Receive Massage
  receiverBubble(BuildContext context,) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomNetworkImage(
          imageUrl:
          "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNob3BwaW5nfGVufDB8fDB8fHww",
          height: 35,
          width: 35,
          boxShape: BoxShape.circle,
          border: Border.all(color: Get.theme.primaryColor, width: 1),
        ),
        SizedBox(
          width: 4.w,
        ),
        Expanded(
          child: ChatBubble(
            clipper: ChatBubbleClipper3(
              type: BubbleType.receiverBubble,
            ),
            //alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            backGroundColor: Color(0xff1E66CA).withOpacity(0.10),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.57,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                       '12:10',
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
