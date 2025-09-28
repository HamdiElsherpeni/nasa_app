import 'package:flutter/material.dart';
import 'package:nasa_app/core/database/my_cache_helper.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/widgets/coustem_eleveted_butten.dart';
import 'package:nasa_app/futures/on_bording/data/model/on_bording_model.dart';
import 'package:nasa_app/futures/on_bording/presentation/view/widgets/on_bording_view_body.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController _controller = PageController(initialPage: 0);
  int curintIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(
                child: OnBordingViewBody(
                  controller: _controller,
                  onPageChanged: (index) {
                    SharedPreferenceManager.saveIsViset(true);
                    setState(() {});
                    curintIndex = index;
                  },
                ),
              ),
              curintIndex == onBordingData.length - 1
                  ? Column(
                      children: [
                        CoustemElevetedBoutten(
                          text: 'Create Account',
                          onPressed: () {
                            coustemNavigatPushReplace(context, AppRouter.sinUpView);
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            coustemNavigatPushReplace(context, AppRouter.sinUpView);
                          },
                          child: Text(
                            'LogIn Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  : CoustemElevetedBoutten(
                      text: 'Next',
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
