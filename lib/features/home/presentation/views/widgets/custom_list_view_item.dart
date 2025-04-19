import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.testImage,
              ),
            )),
      ),
    );
  }
}
