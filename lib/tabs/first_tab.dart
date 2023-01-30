import 'package:book_app_ui/view/book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../model/books.dart';
import '../widget/book_tiles.dart';
import '../widget/short_book_tiles.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        // color: Colors.lightBlue,
        height: 200.h,
        child: ListView.builder(
          itemCount: books.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final book = books[index];
            return BookTiles(
              onPressed: (){
                Get.to(()=> BookDetails(book), transition:  Transition.downToUp);
              },
              title: books[index].title,
              detail: books[index].detail,
              rating: books[index].rating,
              genre: books[index].genre,
              imgPath: books[index].imageUrl,
            );

            //   Container(
            //   width: 370.w,
            //   child: Padding(
            //     padding:
            //         EdgeInsets.only(right: 10.0, left: index == 0 ? 10 : 0),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       children: [
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(10.0),
            //           child: Image.asset(
            //             book.imageUrl,
            //             width: 150.w,
            //             height: 260.h,
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //         Expanded(
            //             child: Card(
            //               shadowColor: Colors.red,
            //
            //           elevation: 10.0,
            //           child: Container(
            //             padding: const EdgeInsets.only(left: 10.0),
            //             height: 200.h,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.spaceAround,
            //               children: [
            //                 Text(book.title,
            //                     style: TextStyle(fontSize: 17.sp)),
            //                 Text(
            //                   book.detail,
            //                   overflow: TextOverflow.ellipsis,
            //                   style: TextStyle(fontSize: 15.sp),
            //                   maxLines: 4,
            //                 ),
            //                 Row(
            //                   mainAxisAlignment:
            //                       MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Text(book.rating),
            //                     Text(book.genre,
            //                         style: TextStyle(fontSize: 14.sp))
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ),
            //         ))
            //       ],
            //     ),
            //   ),
            // );
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Text('You may also like',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500)),
      ),
      const SizedBox(height: 5.0),
      Container(
          height: 220.h,
          child: ListView.builder(
            itemCount: books.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ShortBookTiles(
                imgPath: books[index].imageUrl,
                title: books[index].title,
                genre: books[index].genre,
              );
            },
          ))
    ]);
  }
}
