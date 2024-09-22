import 'package:get/get.dart';
import 'package:jobless/views/screen/Auth/emailverification_screen.dart';
import 'package:jobless/views/screen/Auth/login_screen.dart';
import 'package:jobless/views/screen/Auth/otp_screen.dart';
import 'package:jobless/views/screen/Auth/signup_screen.dart';
import 'package:jobless/views/screen/Home/feeling_post_screen.dart';
import 'package:jobless/views/screen/Home/home_screen.dart';
import 'package:jobless/views/screen/Home/Search/search_screen.dart';
import 'package:jobless/views/screen/Profile/friend_list/my_friends_screen.dart';
import 'package:jobless/views/screen/Profile/parsonal_info/personal_info_screen.dart';
import 'package:jobless/views/screen/Profile/setting/about_screen.dart';
import 'package:jobless/views/screen/Profile/setting/change_password_screen.dart';
import 'package:jobless/views/screen/Profile/setting/privacy_police.dart';
import 'package:jobless/views/screen/Profile/setting/setting_screen.dart';
import 'package:jobless/views/screen/Profile/setting/terms_screen.dart';
import 'package:jobless/views/screen/Widget/view_friend_screen.dart';
import 'package:jobless/views/screen/Message/message_screen.dart';
import 'package:jobless/views/screen/Profile/profile_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/job_confirmetion_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/jobless_categoric_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/onboarding_screen1.dart';
import '../views/screen/Notification/notification_screen.dart';
import '../views/screen/Profile/friend_list/friend_list_screen.dart';
import '../views/screen/Splash/splash_screen.dart';

class AppRoutes{

  static String splashScreen="/splash_screen";
  static String homeScreen="/home_screen";
  static String profileScreen="/profile_screen";
  static String notificationScreen="/notification_screen";
  static String messageScreen="/massage_screen";
  static String onboardingScreen="/onboarding_screen";
  static String jobConfirmScreen="/jobConfirm_screen";
  static String jobCategoriScreen="/jobCategori_screen";
  static String loginScreen="/login_screen";
  static String signUpScreen="/signUp_screen";
  static String emailveryfaiScreen="/emailverifai_screen";
  static String otpScreen="/otp_screen";
  static String searchScreen="/search_screen";
  static String viewFriendScreen="/viewFriend_screen";
  static String feelpostScreen="/feelpost_screen";
  static String personalInfoScreen="/personalInfo_screen";
  static String settingScreen="/setting_screen";
  static String passwordChangeScreen="/passwordChange_screen";
  static String privacyScreen="/privacy_screen";
  static String termsScreen="/term_screen";
  static String aboutsScreen="/about_screen";
  static String friendlistScreen="/friendList_screen";



 static List<GetPage> page=[
    GetPage(name:splashScreen, page: ()=>const SplashScreen()),
    GetPage(name:onboardingScreen, page: ()=>const OnBoardingScreen1()),
    GetPage(name:homeScreen, page: ()=>const HomeScreen(),transition:Transition.noTransition),
    GetPage(name:notificationScreen, page: ()=>const NotificationScreen(),transition:Transition.noTransition),
    GetPage(name:messageScreen, page: ()=>const MessageScreen(),transition:Transition.noTransition),
    GetPage(name:profileScreen, page: ()=>const ProfileScreen(),transition: Transition.noTransition),
     GetPage(name:jobConfirmScreen, page: ()=>const JobConfiramScreen()),
     GetPage(name:jobCategoriScreen, page: ()=>const JoblessCategoricScreen()),
     GetPage(name:loginScreen, page: ()=> LoginScreen()),
     GetPage(name:signUpScreen, page: ()=> SignUpScreen()),
     GetPage(name:emailveryfaiScreen, page: ()=> EmailverificationScreen()),
     GetPage(name:otpScreen, page: ()=> OtpScreen()),
     GetPage(name:searchScreen, page: ()=> SearchScreen()),
     GetPage(name:viewFriendScreen, page: ()=> ViewFriendScreen()),
     GetPage(name:feelpostScreen, page: ()=> FeelingPostScreen()),
     GetPage(name:personalInfoScreen, page: ()=> PersonalInfoScreen()),
     GetPage(name:settingScreen, page: ()=> SettingScreen()),
     GetPage(name:passwordChangeScreen, page: ()=> ChangePasswordScreen()),
     GetPage(name:privacyScreen, page: ()=> PrivacyPoliceScreen()),
     GetPage(name:termsScreen, page: ()=> TermsOFCondititonsScreen()),
     GetPage(name:aboutsScreen, page: ()=> AboutScreen()),
     GetPage(name:friendlistScreen, page: ()=> FriendListScreen()),
  ];



}