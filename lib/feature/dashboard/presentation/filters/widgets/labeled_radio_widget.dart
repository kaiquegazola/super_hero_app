import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabeledRadioWidget<T> extends StatelessWidget {
  const LabeledRadioWidget({
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.padding,
  });

  final String label;
  final T? groupValue;
  final T value;
  final Function(T?) onChanged;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Container(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<T>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
