import 'package:flutter/material.dart';
import 'package:nasa_app/core/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/upload_view_body.dart';

class UploadView extends StatelessWidget {
  const UploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoustemDrawer(),
      body: SafeArea(child: UploadViewBody()),
    );
  }
}
