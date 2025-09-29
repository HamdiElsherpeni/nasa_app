import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/constnts.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/setteing_view_body.dart';

class SetteingView extends StatelessWidget {
  const SetteingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: CoustemDrawer(),key: setteingScaffoldKey,body: SafeArea(child: SetteingViewBody()));
  }
}
