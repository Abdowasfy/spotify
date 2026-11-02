import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/common/widgets/button/bassic_app_button.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/core/routing/app_routes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
              child: SvgPicture.asset('assets/vectors/logo.svg'),
            ),
            const Gap(450),
            const Text(
              'Enjoy Listening To Music',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.darkBackground,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 21),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.darkGrey,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {
                context.push(AppRoutes.chooseMode);
              },
              title: 'Get Started',
            ),
          ],
        ),
      ),
    );
  }
}
