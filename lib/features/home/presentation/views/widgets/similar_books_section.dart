import 'package:bookly/features/home/presentation/views/widgets/similer_books_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like ",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListview(),
      ],
    );
  }
}
