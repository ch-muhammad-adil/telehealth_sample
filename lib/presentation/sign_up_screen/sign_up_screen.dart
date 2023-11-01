import 'package:flutter/material.dart';
import 'package:muhammad_s_telehealth_app/core/app_export.dart';
import 'package:muhammad_s_telehealth_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_s_telehealth_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:muhammad_s_telehealth_app/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_s_telehealth_app/widgets/custom_checkbox_button.dart';
import 'package:muhammad_s_telehealth_app/widgets/custom_elevated_button.dart';
import 'package:muhammad_s_telehealth_app/widgets/custom_text_form_field.dart';
import 'package:muhammad_s_telehealth_app/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  bool agreeCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 40.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildNameEditText(context),
                          SizedBox(height: 16.v),
                          _buildEmailEditText(context),
                          SizedBox(height: 16.v),
                          _buildPasswordEditText(context),
                          SizedBox(height: 16.v),
                          _buildAgreeCheckBox(context),
                          SizedBox(height: 29.v),
                          _buildSignUpButton(context),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 44.h),
                              child: Row(children: [
                                Text("msg_already_have_an".tr,
                                    style: CustomTextStyles.bodyMediumGray600),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogIn(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_log_in2".tr,
                                            style: CustomTextStyles
                                                .titleSmallPrimary_1)))
                              ])),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_sign_up".tr));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
        controller: nameEditTextController,
        hintText: "lbl_enter_your_name".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "msg_enter_your_email".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEditTextController,
        hintText: "msg_enter_your_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkGray500,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildAgreeCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: CustomCheckboxButton(
            text: "msg_i_agree_to_the_medidoc".tr,
            isExpandedText: true,
            value: agreeCheckBox,
            onChange: (value) {
              agreeCheckBox = value;
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Displays a dialog with the [SignUpSuccessDialog] content.
  onTapSignUpButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
