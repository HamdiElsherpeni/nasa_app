import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CsvUploadWidget extends StatelessWidget {
  const CsvUploadWidget({super.key});

  void _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['csv', 'tsv'],
        allowMultiple: true,
      );

      if (result != null) {
        for (var file in result.files) {
          print('Selected File: ${file.name}, Path: ${file.path}');
        }
      } else {
        print('File selection cancelled.');
      }
    } catch (e) {
      print('Error picking file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color containerBackgroundColor = const Color(0xFF191632);
    final Color borderColor = const Color(0xFF5F6184);

    return Container(
      width: 400.w,
      height: 500.w, // متجاوب
      padding: EdgeInsets.all(16.w), // متجاوب
      decoration: BoxDecoration(
        color: containerBackgroundColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2.r,
            blurRadius: 10.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: [10, 6],
          strokeWidth: 3,
          color: borderColor,
          radius: Radius.circular(12.r),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: borderColor.withOpacity(0.5),
                ),
                child: Icon(
                  Icons.cloud_upload_outlined,
                  size: 40.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Drag & drop your CSV files here',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.h),
              Text(
                'or click to browse files',
                style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 14.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: _pickFile,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    gradient: LinearGradient(
                      colors: [Color(0xFF6A5ACD), Color(0xFFA052CD)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Text(
                    'Select Files',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Text(
                'Supports: CSV, TSV (Max 100MB per file)',
                style: TextStyle(color: Color(0xFFB0B0B0), fontSize: 12.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
