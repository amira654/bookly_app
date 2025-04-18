import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsManager.testImage,
                ),
              )),
        ),
      ),
    );
  }
}
