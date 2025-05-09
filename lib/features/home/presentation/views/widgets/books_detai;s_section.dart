import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.2,
          ),
          child: CustomListviewItem(
            image: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
                color: const Color(0xFF707070),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
