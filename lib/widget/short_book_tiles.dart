import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortBookTiles extends StatelessWidget {
  final imgPath, title, genre;

  const ShortBookTiles(
      {Key? key,
      required this.imgPath,
      required this.title,
      required this.genre})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(right: 10.0),
      width: 150.w,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
              child: Image.asset(imgPath, height: 170.h, fit: BoxFit.cover)),
          Spacer(),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14.sp),
          ),
          Spacer(),
          Text(
            genre,
            style: TextStyle(fontSize: 12.sp, color: const Color(0xff007084)),
          ),
        ],
      ),
    );
  }
}
