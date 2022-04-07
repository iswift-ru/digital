import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant/colors.dart';
import '../../../../constant/path_to_image.dart';
import '../../../../translations/locale_keys.g.dart';
import '../widgets/outline_button_app.dart';
import '../widgets/push_card.dart';

class PushList extends StatelessWidget {
  const PushList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            search(),
            const SizedBox(height: 20),
            card(),
            const SizedBox(height: 20),
            button(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget button() => OutlineButtonApp(
        onTap: () {},
        title: LocaleKeys.viewEarly.tr(),
      );

  Widget card() => ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: PushCard(
            icon: heart,
            favorite: LocaleKeys.favorite,
            status: LocaleKeys.macdonalds,
            goTo: LocaleKeys.gotocard,
            time: '10:34',
          ),
        ),
      );

  Widget search() => Container(
        height: 45,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration.collapsed(
                hintStyle: const TextStyle(color: grey4),
                hintText: LocaleKeys.search.tr(),
              ),
            ),
          ),
        ),
      );

  PreferredSize appBar() => PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(drawer),
                SvgPicture.asset(geo),
                SvgPicture.asset(bell),
              ],
            ),
          ),
        ),
      );
}
