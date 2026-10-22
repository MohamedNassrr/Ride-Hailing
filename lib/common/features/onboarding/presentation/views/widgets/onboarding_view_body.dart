import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uber_clone/common/features/onboarding/data/models/onboarding_item_model.dart';
import 'package:uber_clone/common/features/onboarding/presentation/views/widgets/onboarding_bottom_bar.dart';
import 'package:uber_clone/common/features/onboarding/presentation/views/widgets/onboarding_page_item.dart';
import 'package:uber_clone/core/utils/assets_data.dart';
import 'package:uber_clone/generated/l10n.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<OnboardingItemModel> _getItems(BuildContext context) {
    return [
      OnboardingItemModel(
        image: AssetsData.onboarding1,
        title: S.of(context).onboarding1Title,
        description: S.of(context).onboarding1Description,
      ),
      OnboardingItemModel(
        image: AssetsData.onboarding2,
        title: S.of(context).onboarding2Title,
        description: S.of(context).onboarding2Description,
      ),
      OnboardingItemModel(
        image: AssetsData.onboarding3,
        title: S.of(context).onboarding3Title,
        description: S.of(context).onboarding3Description,
      ),
    ];
  }

  void _onSkip(int totalPages) {
    _pageController.animateToPage(
      totalPages - 1,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  void _onNext(int totalPages) {
    if (_currentPage < totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = _getItems(context);
    final isLastPage = _currentPage == items.length - 1;

    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Visibility(
                visible: !isLastPage,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: TextButton(
                  onPressed: () => _onSkip(items.length),
                  child: Text(
                    S.of(context).skip,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: items.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPageItem(item: items[index]);
              },
            ),
          ),
          OnboardingBottomBar(
            controller: _pageController,
            count: items.length,
            isLastPage: isLastPage,
            onNext: () => _onNext(items.length),
          ),
        ],
      ),
    );
  }
}
