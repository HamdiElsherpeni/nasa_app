import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/resources/app_colors.dart';
import 'package:nasa_app/futures/upload/presentation/view/widgets/coustem_start_classification.dart';

class CoustemPredectionForm extends StatelessWidget {
  CoustemPredectionForm({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController kepoiNameController = TextEditingController();
  final TextEditingController koiCountController = TextEditingController();
  final TextEditingController koiDiccoMskyController = TextEditingController();
  final TextEditingController koiDiccoMskyErrController =
      TextEditingController();
  final TextEditingController koiMaxMultEvController = TextEditingController();
  final TextEditingController koiModelSnrController = TextEditingController();
  final TextEditingController koiPradController = TextEditingController();
  final TextEditingController koiPradErr1Controller = TextEditingController();
  final TextEditingController koiScoreController = TextEditingController();
  final TextEditingController koiSmetErr2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: 3.h),
        child: Container(
          decoration: BoxDecoration(
        color:AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2.r,
            blurRadius: 10.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
          child: Column(
            children: [
              _buildRowField("Name", kepoiNameController),
              _buildRowField("Count", koiCountController),
              _buildRowField("Dicco_msky", koiDiccoMskyController),
              _buildRowField("Dicco_msky_err", koiDiccoMskyErrController),
              _buildRowField("Max_mult_ev", koiMaxMultEvController),
              _buildRowField("Model_snr", koiModelSnrController),
              _buildRowField("Prad", koiPradController),
              _buildRowField("Prad_err1", koiPradErr1Controller),
              _buildRowField("Score", koiScoreController),
              _buildRowField("Kmet_err2", koiSmetErr2Controller),
              const SizedBox(height: 20),
               CoustemStartClassification(onTap: () {
                 
               },),
            ],
          ),
        ),
      ),
    );
  }

  /// جدول: Label + TextField
  Widget _buildRowField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 7,
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
              ),
              validator: (value) =>
                  value == null || value.isEmpty ? "Required" : null,
            ),
          ),
        ],
      ),
    );
  }
}
