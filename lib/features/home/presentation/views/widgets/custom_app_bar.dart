import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
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
