import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_doc/core/widgets/headline_title_row.dart';

class SpecialltyCategories extends StatelessWidget {
  const SpecialltyCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadlineTitleRow(
            title: 'Doctor Specialty',
            onSeeAllPressed: () {},
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => SpecialltyCategory(index: index),
            ),
          )
        ],
      ),
    );
  }
}

class SpecialltyCategory extends StatelessWidget {
  const SpecialltyCategory({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Colors.lightBlue.withAlpha(30),
            child: Icon(
              Icons.medical_services,
              color: Colors.blue,
              size: 30.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Cardiologist',
            style: TextStyle(
              fontSize: 12.sp,
            ),
          )
        ],
      ),
    );
  }
}
