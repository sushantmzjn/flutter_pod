import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookTiles extends StatelessWidget {
  final String imgPath, title, detail, rating, genre;
  void Function()? onPressed;

  BookTiles(
      {Key? key,
      required this.title,
      required this.detail,
      required this.rating,
      required this.genre,
      required this.imgPath,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0, bottom: 5.0),
            // color: Colors.red,
            height: 180.h,
            alignment: Alignment.bottomLeft,
            child: Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 145.h,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                children: [
                  Container(
                    width: 115.w,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                          SizedBox(height: 8),
                          Text(
                            detail,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(rating),
                              Spacer(),
                              Flexible(
                                child: Text(
                                  genre,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: const Color(0xff007084)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 175.h,
            margin: EdgeInsets.only(left: 12.0, top: 6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.asset(
                imgPath,
                height: 150.h,
                width: 110.w,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
