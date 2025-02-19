import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/core/routes/generate_routes.dart';
import 'package:fruits_hub/core/routes/routes.dart';
import 'package:fruits_hub/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      theme: ThemeData(fontFamily: 'Cairo'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.login,
    );
  }
}
