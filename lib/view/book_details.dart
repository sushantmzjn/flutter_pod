import 'package:book_app_ui/model/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetails extends StatelessWidget {
  final Book book;

  BookDetails(this.book);

  // const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        title: Text(
          'Details',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                book.imageUrl,
                height: 250.h,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
            child: Row(
              children: [
                Expanded(child: Text(book.title)),
                Spacer(),
                Column(
                  children: [
                    Text(book.rating),
                    Text(
                      book.genre,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: const Color(0xff007084)),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Center(child: Text(book.detail)),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: const Text(
                'Read book',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {},
              child: const Text('More Info',
                  style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
