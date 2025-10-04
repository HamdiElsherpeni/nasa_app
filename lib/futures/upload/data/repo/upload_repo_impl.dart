// import 'dart:convert';
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:nasa_app/core/networking/api_failure.dart';
// import 'package:nasa_app/futures/upload/data/models/upload_css/upload_cs_reques.dart';
// import 'package:nasa_app/futures/upload/data/models/upload_css/upload_csv_response.dart';
// import 'package:nasa_app/futures/upload/data/models/upload_predect_real/upload_predect_real_response.dart';
// import 'package:nasa_app/futures/upload/data/repo/upload_repo.dart';

// class UploadRepoImpl implements UploadRepo {
//   final Dio dio;

//   UploadRepoImpl(this.dio);

//   // 1. دالة رفع ملف CSV (لا يوجد تغيير كبير، فقط ملاحظة على Failure.api)
//   @override
//   Future<Either<Failure, UploadCsvFileResponse>> uploadCsv({
//     required UploadCsvFileRequest uploadCsvFileRequest,
//   }) async {
//     try {
//       final formData = await uploadCsvFileRequest.toFormData();

//       final response = await dio.post(
//         'https://exoai-production.up.railway.app/retrain',
//         data: formData,
//       );

//       if (response.statusCode == 200) {
//         return right(UploadCsvFileResponse.fromJson(response.data));
//       } else {
//         // نستخدم Failure.api كما هو مفترض في الكود الأصلي
//         return left(Failure.api(response.statusMessage ?? "Failed to upload CSV file. Status code: ${response.statusCode}"));
//       }
//     } on DioException catch (e) {
//       return left(ServerFailure.fromDioException(e));
//     } catch (e) {
//       return left(ServerFailure('An unexpected error occurred: ${e.toString()}'));
//     }
//   }

//   // 2. دالة توقع البيانات الحقيقية (تحسين إرسال الـ JSON)
//   @override
//   Future<Either<Failure, PredictionRealResponse>> uploadPredectReal({
//     required String fileName,
//     required int koicount,
//     required double koidiccoMsky,
//     required double koiDiccoMskyErr,
//     required double koimaxMultEv,
//     required double koimodelSnr,
//     required double koiPrad,
//     required double koiPradErr1,
//     required double koiScore,
//     required double koiSmetErr2,
//   }) async {
//     try {
//       final body = {
//         "kepoi_name": fileName,
//         "koi_count": koicount,
//         "koi_dicco_msky": koidiccoMsky,
//         "koi_dicco_msky_err": koiDiccoMskyErr,
//         "koi_max_mult_ev": koimaxMultEv,
//         "koi_model_snr": koimodelSnr,
//         "koi_prad": koiPrad,
//         "koi_prad_err1": koiPradErr1,
//         "koi_score": koiScore,
//         "koi_smet_err2": koiSmetErr2,
//       };

//       // *** تم التبسيط هنا: إرسال الـ Map مباشرةً بدلاً من json.encode والهيدرات المخصصة ***
//       final response = await dio.post(
//         'https://exoai-production.up.railway.app/predict-real',
//         data: body, // Dio سيقوم بترميزها كـ JSON تلقائيًا
//       );

//       if (response.statusCode == 200) {
//         return right(PredictionRealResponse.fromJson(response.data));
//       } else {
//         // نستخدم Failure.api كما هو مفترض في الكود الأصلي
//         return left(Failure(response.statusMessage ?? "Failed to get prediction. Status code: ${response.statusCode}"));
//       }
//     } on DioException catch (e) {
//       return left(ServerFailure.fromDioException(e));
//     } catch (e) {
//       return left(ServerFailure('An unexpected error occurred: ${e.toString()}'));
//     }
//   }
// }