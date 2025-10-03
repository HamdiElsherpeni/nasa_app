import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/constnts.dart';
import 'package:nasa_app/core/widgets/coustem_drawer.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/upload_view_body.dart';

class UplodaView extends StatelessWidget {
  const UplodaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: uploadScaffoldKey,
      drawer: CoustemDrawer(),
      body: SafeArea(child: UploadViewBody()),
    );
  }
}
