import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../data/model/get_started_model.dart';

class InActiveUserTypeContainer extends StatelessWidget {
  final GetStartedModel getStartedModel;
  const InActiveUserTypeContainer({
    super.key,
    required this.getStartedModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: ColorsManagers.lightGray,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: ColorsManagers.cultured,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              getStartedModel.title,
              style: TextStyles.font12TaupeGrayw500Inter,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
            leading: SvgPicture.asset(
              getStartedModel.icon,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(.25),
                BlendMode.srcIn,
              ),
            ),
            subtitle: Text(getStartedModel.subTitle,
                style: TextStyles.font10DarkLiver400Inter),
          ),
        ),
      ),
    );
  }
}