import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortBookTiles extends StatelessWidget {
  final imgPath, title, genre;
  void Function()? onTap;

  ShortBookTiles(
      {Key? key,
      required this.imgPath,
      required this.title,
      required this.genre,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0), color: Colors.white),
        padding: EdgeInsets.only(top: 10.0),
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10.0),
        width: 120.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.asset(imgPath, height: 170.h, fit: BoxFit.cover)),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14.sp,color: Colors.black),
              ),
            ),
            Spacer(),
            Text(
              genre,
              style: TextStyle(fontSize: 12.sp, color: const Color(0xff007084)),
            ),
          ],
        ),
      ),
    );
  }
}
