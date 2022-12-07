import 'package:dev_habits/src/config/app_assets.dart';
import 'package:dev_habits/src/config/app_colors.dart';
import 'package:dev_habits/src/features/widgets/frequency_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: Image.asset(AppAssets.menuIcon)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  FrequencyWidget(
                    mainColor: AppColors.hardMorning,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardMorning,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardMorning,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardMorning,
                    showHalf: true,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardMorning,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  FrequencyWidget(
                    mainColor: AppColors.sunset,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.sunset,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.sunset,
                    showHalf: true,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.sunset,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  FrequencyWidget(
                    mainColor: AppColors.twilight,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.twilight,
                    showHalf: true,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.twilight,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  FrequencyWidget(
                    mainColor: AppColors.hardEclipse,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardEclipse,
                    showHalf: true,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardEclipse,
                  ),
                  FrequencyWidget(
                    mainColor: AppColors.hardEclipse,
                    showHalf: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
