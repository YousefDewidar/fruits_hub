import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:svg_flutter/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    bool seenLanding =
        getIt.get<SharedPreferences>().getBool("viewLanding") ?? false;
    SupabaseClient supabase = Supabase.instance.client;
    var user = supabase.auth.currentUser;
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        if (user != null) {
          Navigator.pushReplacementNamed(context, Routes.home);
        } else {
          Navigator.pushReplacementNamed(
            context,
            seenLanding ? Routes.login : Routes.landing,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(Assets.imagesPlant,
              height: 180, alignment: Alignment.topLeft),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(Assets.imagesLogo, height: 180),
          ),
          SvgPicture.asset(Assets.imagesSplashBottom, height: 180),
        ],
      ),
    );
  }
}
