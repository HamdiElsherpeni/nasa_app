import 'package:flutter/material.dart';
import 'package:nasa_app/core/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/result/presentation/view/widgets/result_view_body.dart';
import 'package:nasa_app/futures/upload/data/models/upload_css/upload_csv_response.dart';
import 'package:nasa_app/futures/upload/data/models/upload_predect_real/upload_predect_real_response.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    this.uploadCsvFileResponse,
    this.predictionRealResponse,
  });
  final UploadCsvFileResponse? uploadCsvFileResponse;
  final PredictionRealResponse? predictionRealResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoustemDrawer(),
      body: SafeArea(child: ResultViewBody()),
    );
  }
}
