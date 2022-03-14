import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/translations/locale_keys.g.dart';
import '../../../constant/colors.dart';
import '../../../constant/path_to_image.dart';
import '../../../ui/main_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            background(),
            Column(
              children: [
                appBar(),
                const Spacer(),
                ...description(),
                const SizedBox(
                  height: 30,
                ),
                MainButton(
                  onTap: () {},
                  title: LocaleKeys.LetsGetStarted,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> description() => [
        const Text(
          LocaleKeys.WelcomeToTheOnly,
          style: TextStyle(
            fontSize: 32,
            color: mainColor,
          ),
          textAlign: TextAlign.center,
        ).tr(),
        const Text(
          LocaleKeys.AIHealthAssistance,
          style: TextStyle(
            fontSize: 32,
            color: mainColor,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ).tr(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Image.asset(
            lineUnderText,
          ),
        ),
      ];

  Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          pathLogo,
          width: 86,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 45,
            width: 1,
            color: mainColor,
          ),
        ),
        const Text(
          LocaleKeys.BMIDiseaseTracker,
          style: TextStyle(color: mainColor, fontSize: 20),
        ).tr(),
      ],
    );
  }

  Padding background() {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              womanHand,
            ),
          ),
        ),
      ),
    );
  }
}
