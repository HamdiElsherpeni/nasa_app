import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/constnts.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/result_view_body.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: CoustemDrawer(),key: resultScaffoldKey,body: SafeArea(child: ResultViewBody()),);
  }
}