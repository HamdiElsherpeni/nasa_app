import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_app/core/networking/api_services.dart';
import 'package:nasa_app/core/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/result/presentation/view/widgets/result_view_body.dart';

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
  return Scaffold(drawer: CoustemDrawer(),body: SafeArea(child: ResultViewBody()),);
  }
}
