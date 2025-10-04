import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/widgets/coustem_app_bar.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/coustem_clssification_parametters.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/coustem_cv_uplod_card.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/coustem_predection_form.dart';

class UploadViewBody extends StatelessWidget {
  const UploadViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          CoustemAppBar(
            context:context,
            titel: 'Upload Transit Data',
            subTitel:
                'Upload CSV files containing Kepler telescope transit data for classification',
          ),
          CsvUploadWidget(),
          SizedBox(height: 20.h,),
          ClassificationParametersWidget(),
          SizedBox(height: 40.h,),
          
        CoustemPredectionForm()

        ],
      ),
    );
  }
}
