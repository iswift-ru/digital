import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant/colors.dart';

class PushCard extends StatelessWidget {
  const PushCard({
    Key? key,
    required this.icon,
    required this.favorite,
    required this.status,
    required this.goTo,
    required this.time,
  }) : super(key: key);

  final String icon;
  final String favorite;
  final String status;
  final String goTo;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 15),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(color: greyBlue, fontSize: 14),
                      ),
                      Text(favorite, style: const TextStyle(color: grey1, fontSize: 14)).tr(),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(status).tr(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        goTo,
                        style: const TextStyle(color: iris100, fontSize: 14),
                      ).tr(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
