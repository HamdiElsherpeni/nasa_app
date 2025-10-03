import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassificationParametersWidget extends StatefulWidget {
  const ClassificationParametersWidget({super.key});

  @override
  State<ClassificationParametersWidget> createState() =>
      _ClassificationParametersWidgetState();
}

class _ClassificationParametersWidgetState
    extends State<ClassificationParametersWidget> {
  String datasetName = '';
  double confidenceThreshold = 0.8;
  String? batchSizeValue = '32';
  final List<String> batchSizes = ['16', '32', '64', '128', '256'];

  final Color widgetBackgroundColor = const Color(0xFF191632);
  final Color primaryGreen = const Color(0xFF4CAF50);

  Widget _buildLabeledField({
    required String label,
    required Widget child,
    bool isFixed = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        child,
        if (!isFixed) SizedBox(height: 20.h),
      ],
    );
  }

  void _startClassification() {
    print('Starting Classification with:');
    print('Dataset Name: $datasetName');
    print('Model Version: ExoNet v2.1 (Fixed)');
    print('Confidence Threshold: ${confidenceThreshold.toStringAsFixed(2)}');
    print('Batch Size: $batchSizeValue');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Classification started...'),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  void _saveAsTemplate() {
    print('Saving as Template...');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Template saved successfully!'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: widgetBackgroundColor,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classification Parameters',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25.h),

          // Dataset Name
          _buildLabeledField(
            label: 'Dataset Name',
            child: TextField(
              onChanged: (value) => datasetName = value,
              decoration: InputDecoration(
                hintText: 'Enter dataset name',
                hintStyle:
                    TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14.sp),
                filled: true,
                fillColor: Colors.black.withOpacity(0.3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              ),
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
          ),
          SizedBox(height: 20.h),

          // Model Version (Fixed)
          _buildLabeledField(
            label: 'Model Version',
            isFixed: true,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ExoNet v2.1 (Fixed)',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.lock_outline,
                    color: Colors.white.withOpacity(0.6),
                    size: 20.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),

          // Confidence Threshold
          _buildLabeledField(
            label: 'Confidence Threshold',
            isFixed: true,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('50%', style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12.sp)),
                    Text('${(confidenceThreshold * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp)),
                    Text('100%', style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12.sp)),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2.h,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.r),
                    activeTrackColor: const Color(0xFF6A5ACD),
                    inactiveTrackColor: Colors.grey.withOpacity(0.3),
                    thumbColor: const Color(0xFF6A5ACD),
                  ),
                  child: Slider(
                    value: confidenceThreshold,
                    min: 0.5,
                    max: 1.0,
                    divisions: 10,
                    onChanged: (value) {
                      setState(() {
                        confidenceThreshold = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),

          // Batch Size
          _buildLabeledField(
            label: 'Batch Size',
            child: DropdownButtonFormField<String>(
              value: batchSizeValue,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black.withOpacity(0.3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              ),
              dropdownColor: widgetBackgroundColor,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
              items: batchSizes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  batchSizeValue = newValue;
                });
              },
            ),
          ),
          SizedBox(height: 40.h),

          // Start Classification Button
          GestureDetector(
            onTap: _startClassification,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                gradient: LinearGradient(
                  colors: [primaryGreen, primaryGreen],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryGreen.withOpacity(0.4),
                    blurRadius: 10.r,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 24.sp),
                  SizedBox(width: 10.w),
                  Text(
                    'Start Classification',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.h),

          // Save as Template Button
          GestureDetector(
            onTap: _saveAsTemplate,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.black.withOpacity(0.4),
                border: Border.all(color: Colors.white.withOpacity(0.2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bookmark_border, color: Colors.white.withOpacity(0.8), size: 22.sp),
                  SizedBox(width: 10.w),
                  Text(
                    'Save as Template',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
