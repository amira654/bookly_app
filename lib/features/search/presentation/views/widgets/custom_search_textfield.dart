import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      enabledBorder: buildOutlineInputBorder(),
      focusedBorder: buildOutlineInputBorder(),
      hintText: 'Search',
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const ImageIcon(
          AssetImage(
            AssetsManager.search,
          ),
          color: Colors.white,
        ),
      ),
    ));
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white,
        ));
  }
}
