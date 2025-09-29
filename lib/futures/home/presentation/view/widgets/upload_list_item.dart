  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:nasa_app/futures/home/presentation/view/widgets/upload_widgets/model/ulpoad_model.dart';

  class UploadListItem extends StatelessWidget {
    final UploadItem item;

    const UploadListItem({super.key, required this.item});

    // تحديد اللون حسب الحالة
    Color _getStatusColor(UploadStatus status) {
      switch (status) {
        case UploadStatus.completed:
          return const Color(0xFF4CAF50);
        case UploadStatus.processing:
          return const Color(0xFFE4AD1E);
        case UploadStatus.failed:
          return Colors.red;
      }
    }

    String _getStatusText(UploadStatus status) {
      switch (status) {
        case UploadStatus.completed:
          return 'Completed';
        case UploadStatus.processing:
          return 'Processing';
        case UploadStatus.failed:
          return 'Failed';
      }
    }

    @override
    Widget build(BuildContext context) {
      final statusColor = _getStatusColor(item.status);

      return Container(
        padding: EdgeInsets.all(20.w), // متجاوب
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: const Color(0xFF1F1C37),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // أيقونة الملف
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: const Icon(Icons.description, color: Colors.white, size: 28),
            ),
            SizedBox(width: 10.w),
            
            // تفاصيل الملف
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // اسم الملف
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      item.fileName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  // التفاصيل والعدد
                  Row(
                    children: [
                      Text(
                        'Uploaded ${item.timeAgo} ago',
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 9.sp),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: const Text('•', style: TextStyle(color: Color(0xFF5F6184), fontSize: 13)),
                      ),
                      Text(
                        '${item.objectsCount} objects',
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 10.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 2.w),

            // حالة الملف
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Text(
                _getStatusText(item.status),
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
