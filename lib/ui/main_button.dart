import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Material(
      color: const Color(0xff3683FC),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xff3683FC)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: width - 40,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ).tr(),
            ),
          ),
        ),
      ),
    );
  }
}
