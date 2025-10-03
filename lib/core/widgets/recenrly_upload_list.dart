import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/widgets/upload_list_item.dart';
import 'package:nasa_app/futures/upload/data/models/ulpoad_model.dart';

class RecentUploadsList extends StatelessWidget {
  const RecentUploadsList({super.key});

  static final List<UploadItem> dummyUploads = [
    UploadItem(
      fileName: 'kepler_q1_q17_dr25_tce.csv',
      timeAgo: '2 hours',
      objectsCount: 15847,
      status: UploadStatus.completed,
    ),
    UploadItem(
      fileName: 'tess_sector_1_candidates.csv',
      timeAgo: '1 day',
      objectsCount: 8234,
      status: UploadStatus.processing,
    ),
    UploadItem(
      fileName: 'gaia_dr3_stars.csv',
      timeAgo: '3 days',
      objectsCount: 45000,
      status: UploadStatus.completed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.w, // متجاوب
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: const Color(0xFF191632),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Uploads',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.h),
          // عرض قائمة العناصر
          ...dummyUploads.map((item) => Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: UploadListItem(item: item),
              )),
          SizedBox(height: 15.h),

        ],
      ),
    );
  }
}
