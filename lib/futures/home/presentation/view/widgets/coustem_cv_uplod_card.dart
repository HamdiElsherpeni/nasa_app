// import 'package:flutter/material.dart';
// import 'package:dotted_border/dotted_border.dart';

// class CsvUploadCard extends StatelessWidget {
//   const CsvUploadCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // 🎨 ألوان ثابتة للتصميم الداكن
//     final Color cardBackgroundColor = const Color(0xFF1A1C2C);
//     final Color primaryTextColor = Colors.white;
//     final Color secondaryTextColor = const Color(0xFF6C6F82);
//     final Color dottedBorderColor = const Color(0xFF6C6F82);
//     final Color iconCircleColor = const Color(0xFF33354C);

//     return Container(
//       decoration: BoxDecoration(
//         color: cardBackgroundColor,
//         borderRadius: BorderRadius.circular(12.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.3),
//             blurRadius: 10,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // العنوان
//           Text(
//             'CSV File Upload',
//             style: TextStyle(
//               color: primaryTextColor,
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           const SizedBox(height: 20),

//           // ⭐️ حدود منقطة
//           DottedBorder(
//             borderType: BorderType.RRect,
//             radius: const Radius.circular(12),
//             padding: const EdgeInsets.all(4),
//             dashPattern: const [8, 4],
//             strokeWidth: 2,
//             color: dottedBorderColor,
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//               decoration: BoxDecoration(
//                 color: cardBackgroundColor,
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // أيقونة
//                   Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: iconCircleColor,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.cloud_upload_outlined,
//                       color: secondaryTextColor,
//                       size: 40,
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // النص الأساسي
//                   Text(
//                     'Drag & drop your CSV files here',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: primaryTextColor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const SizedBox(height: 5),

//                   // النص الثانوي
//                   Text(
//                     'or click to browse files',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: secondaryTextColor,
//                       fontSize: 14,
//                     ),
//                   ),
//                   const SizedBox(height: 30),

//                   // زر التحديد
//                   SizedBox(
//                     width: 180,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         print('Select Files pressed');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8.0),
//                         ),
//                         backgroundColor: Colors.transparent,
//                         shadowColor: Colors.transparent,
//                       ).merge(
//                         ButtonStyle(
//                           backgroundColor: WidgetStateProperty.all(null),
//                         ),
//                       ),
//                       child: Ink(
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [Color(0xFF6B45F8), Color(0xFFC06EE4)],
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                           ),
//                           borderRadius: BorderRadius.circular(8.0),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: Text(
//                             'Select Files',
//                             style: TextStyle(
//                               color: primaryTextColor,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // الملاحظات
//                   Text(
//                     'Supports: CSV, TSV (Max 100MB per file)',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: secondaryTextColor.withOpacity(0.8),
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
