import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/constnts.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      drawer:CoustemDrawer(),
       
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}

