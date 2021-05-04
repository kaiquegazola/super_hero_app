import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    required this.label,
    required this.value,
    this.padding,
    this.width,
    Key? key,
  }) : super(key: key);

  final String label;
  final String value;
  final EdgeInsets? padding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: padding ?? EdgeInsets.symmetric(horizontal: 33.w, vertical: 4.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(5.w),
              color: Color(0xFFFAFAFF),
            ),
            padding: EdgeInsets.all(5.w),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 5.w),
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  shadows: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                  fontSize: 14.sp,
                ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
