import 'package:get/get.dart';
import 'package:jobless/views/screen/Auth/emailverification_screen.dart';
import 'package:jobless/views/screen/Auth/login_screen.dart';
import 'package:jobless/views/screen/Auth/otp_screen.dart';
import 'package:jobless/views/screen/Auth/signup_screen.dart';
import 'package:jobless/views/screen/Home/feeling_post_screen.dart';
import 'package:jobless/views/screen/Home/home_screen.dart';
import 'package:jobless/views/screen/Home/Search/search_screen.dart';
import 'package:jobless/views/screen/Widget/view_friend_screen.dart';
import 'package:jobless/views/screen/Message/message_screen.dart';
import 'package:jobless/views/screen/Profile/profile_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/job_confirmetion_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/jobless_categoric_screen.dart';
import 'package:jobless/views/screen/onboarding_screen/onboarding_screen1.dart';
import '../views/screen/Notification/notification_screen.dart';
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
  ];



}