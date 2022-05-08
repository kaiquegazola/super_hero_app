import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_hero_app/feature/dashboard/domain/entities/dashboard_hero_filter_entity.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/controllers/dashboard_controller.dart';
import 'package:super_hero_app/feature/dashboard/presentation/filters/widgets/labeled_radio_widget.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      duration: Duration(milliseconds: 250),
      child: Material(
        child: Container(
          height: 350.h,
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 5.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.filter = DashboardHeroFilterEntity();
                        controller.applyFilters(context);
                        Modular.to.pop();
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.clear),
                          Text('Clear'),
                        ],
                      )),
                  Text(
                    'Filters',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.applyFilters(context);
                      Modular.to.pop();
                    },
                    child: Row(
                      children: const [
                        Text('Apply'),
                        Icon(Icons.check),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 15.h,
                ),
                width: 300.w,
                height: 40.h,
                child: TextFormField(
                  initialValue: controller.filter.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.w),
                    ),
                    hintText: 'Hero name',
                  ),
                  style: TextStyle(fontSize: 16.sp),
                  onChanged: (String text) {
                    controller.filter = controller.filter.copyWith(
                      name: text,
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 15.h,
                ),
                width: 300.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black26),
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Observer(
                  builder: (_) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: Text(
                          'Gender',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      LabeledRadioWidget<String?>(
                        label: 'All',
                        groupValue: controller.filter.gender,
                        value: '',
                        onChanged: (String? value) {
                          controller.filter = controller.filter.copyWith(
                            gender: value,
                          );
                        },
                      ),
                      LabeledRadioWidget<String>(
                        label: 'Female',
                        groupValue: controller.filter.gender,
                        value: 'female',
                        onChanged: (String? value) {
                          controller.filter = controller.filter.copyWith(
                            gender: value,
                          );
                        },
                      ),
                      LabeledRadioWidget<String>(
                        label: 'Male',
                        groupValue: controller.filter.gender,
                        value: 'male',
                        onChanged: (String? value) {
                          controller.filter = controller.filter.copyWith(
                            gender: value,
                          );
                        },
                      ),
                      LabeledRadioWidget<String>(
                        label: 'Other',
                        groupValue: controller.filter.gender,
                        value: '-',
                        onChanged: (String? value) {
                          controller.filter = controller.filter.copyWith(
                            gender: value,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
