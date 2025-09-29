import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_app_bar.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/result_widgets/classification_confidince_widget.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/result_widgets/classification_distribution_widget.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/result_widgets/coustem_prediction_summaryl_list.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CoustemAppBar(
              context: context,
              titel: 'Classification Results',
              subTitel: 'Analysis results and performance metrics',
            ),
          ),
          SliverToBoxAdapter(child: PredictionSummaryList()),
          SliverToBoxAdapter(child: SizedBox(height: 10.h,),),
          SliverToBoxAdapter(child: ClassificationDistributionWidget(),),
          SliverToBoxAdapter(child: SizedBox(height: 10.h,),),

          SliverToBoxAdapter(child: ClassificationConfidenceWidget(),),
        ],
      ),
    );
  }
}
