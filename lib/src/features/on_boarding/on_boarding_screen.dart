import 'package:dev_habits/src/config/app_assets.dart';
import 'package:dev_habits/src/config/app_colors.dart';
import 'package:dev_habits/src/config/app_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _actualPage = 1;
  @override
  Widget build(BuildContext context) {
    String title = '';
    String image = '';

    switch (_actualPage) {
      case 1:
        title = AppStrings.onBoardingTitle1;
        image = AppAssets.onBoardingImage1;
        break;
      case 2:
        title = AppStrings.onBoardingTitle2;
        image = AppAssets.onBoardingImage2;
        break;
      case 3:
        title = AppStrings.onBoardingTitle3;
        image = AppAssets.onBoardingImage3;
        break;
      case 4:
        title = AppStrings.onBoardingTitle4;
        image = AppAssets.onBoardingImage4;
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Text(title),
              Image.asset(image),
              Text.rich(
                TextSpan(
                  text: AppStrings.onBoardingParagraphPart1,
                  children: [
                    TextSpan(text: AppStrings.onBoardingParagraphPart2),
                    TextSpan(text: AppStrings.onBoardingParagraphPart3),
                    TextSpan(text: AppStrings.onBoardingParagraphPart4),
                  ],
                ),
              ),
              SizedBox(
                height: 65,
              ),
              if (_actualPage < 4)
                _Paginator(
                  actualPage: _actualPage,
                  onTapNext: () {
                    setState(() {
                      _actualPage++;
                    });
                  },
                )
              else
                TextButton(
                  onPressed: () {},
                  style:
                      TextButton.styleFrom(backgroundColor: AppColors.morning),
                  child: Text(AppStrings.getStarted),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _Paginator extends StatelessWidget {
  const _Paginator(
      {Key? key, required this.actualPage, required this.onTapNext})
      : super(key: key);
  final int actualPage;
  final VoidCallback onTapNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.skip,
        ),
        Spacer(),
        Indicator(selected: actualPage == 1),
        Indicator(selected: actualPage == 2),
        Indicator(selected: actualPage == 3),
        Indicator(selected: actualPage == 4),
        Spacer(),
        InkWell(
          onTap: onTapNext,
          child: Text(
            AppStrings.next,
          ),
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({Key? key, required this.selected}) : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: 15,
      width: 15,
      color: selected ? AppColors.eclipse : AppColors.morning,
    );
  }
}
