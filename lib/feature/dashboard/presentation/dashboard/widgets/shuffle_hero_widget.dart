import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShuffleHeroWidget extends StatelessWidget {
  const ShuffleHeroWidget({
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.shuffle),
            Text('RANDOM HERO'),
          ],
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          side: BorderSide(
            width: 2.w,
            color: Colors.white,
          ),
        ));
  }
}
