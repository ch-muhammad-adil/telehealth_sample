import 'package:flutter/material.dart';
import 'package:muhammad_s_telehealth_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          onboardingText: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Onboarding One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Onboarding Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Onboarding Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Onboarding Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText:
                              "Reset Password - Email - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.resetPasswordEmailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Reset Password - Verify Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordVerifyCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Home - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Top Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Find Doctors".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.findDoctorsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Doctor Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Booking Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Chat with Doctor".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatWithDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Audio Call".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.audioCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Video Call".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.videoCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Articles".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articlesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Pharmacy".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pharmacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Drugs Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drugsDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "My Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.myCartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          onboardingText: "Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String onboardingText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  onboardingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
