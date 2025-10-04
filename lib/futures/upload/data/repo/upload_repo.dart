import 'package:dartz/dartz.dart';
import 'package:nasa_app/core/networking/api_failure.dart';
import 'package:nasa_app/futures/upload/data/models/upload_css/upload_cs_reques.dart';
import 'package:nasa_app/futures/upload/data/models/upload_css/upload_csv_response.dart';
import 'package:nasa_app/futures/upload/data/models/upload_predect_real/upload_predect_real_response.dart';

abstract class UploadRepo {
  Future<Either<Failure, UploadCsvFileResponse>> uploadCsv({
    required UploadCsvFileRequest uploadCsvFileRequest,
  });
  Future<Either<Failure, PredictionRealResponse>> uploadPredectReal({
    required String fileName,
    required int koicount,
    required double koidiccoMsky,
    required double koiDiccoMskyErr,
    required double koimaxMultEv,
    required double koimodelSnr,
    required double koiPrad,
    required double koiPradErr1,
    required double koiScore,
    required double koiSmetErr2,
  });
}
