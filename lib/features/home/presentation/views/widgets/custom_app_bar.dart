import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 40,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsManager.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                AssetsManager.search,
              ),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
