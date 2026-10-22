import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uber_clone/core/widgets/custom_text_icon_button.dart';
import 'package:uber_clone/generated/l10n.dart';

class OnboardingBottomBar extends StatelessWidget {
  const OnboardingBottomBar({
    super.key,
    required this.controller,
    required this.count,
    required this.isLastPage,
    required this.onNext,
  });

  final PageController controller;
  final int count;
  final bool isLastPage;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: count,
            effect: ExpandingDotsEffect(
              activeDotColor: Theme.of(context).primaryColor,
              dotColor: Colors.grey.shade300,
              dotHeight: 8.h,
              dotWidth: 8.w,
              expansionFactor: 3,
              spacing: 6.w,
            ),
          ),
          const Spacer(),
          CustomTextIconButton(
            onPressed: onNext,
            text: isLastPage ? S.of(context).getStarted : S.of(context).next,
          ),
        ],
      ),
    );
  }
}
