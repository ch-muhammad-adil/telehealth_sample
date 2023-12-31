import 'package:flutter/material.dart';
import 'package:muhammad_s_telehealth_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfilelistsectionItemWidget extends StatelessWidget {
  const ProfilelistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationWhiteA700,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_heart_rate".tr,
            style: CustomTextStyles.labelMediumBlue50,
          ),
          SizedBox(height: 5.v),
          Text(
            "lbl_215bpm".tr,
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }
}
