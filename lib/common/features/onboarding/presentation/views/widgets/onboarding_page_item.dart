import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/common/features/onboarding/data/models/onboarding_item_model.dart';

class OnboardingPageItem extends StatelessWidget {
  const OnboardingPageItem({super.key, required this.item});

  final OnboardingItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset(item.image, height: 280.h, fit: BoxFit.contain),
        SizedBox(height: 25.h),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ) ??
              TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        SizedBox(height: 10.h),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Colors.grey[600],
                height: 1.5,
              ) ??
              TextStyle(fontSize: 16.sp, color: Colors.grey[600], height: 1.5),
        ),
      ],
    );
  }
}
