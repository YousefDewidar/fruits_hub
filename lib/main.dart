import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routes/generate_routes.dart';
import 'package:fruits_hub/core/routes/routes.dart';

// Icon app ,  package name ,animated splash
// local

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.login,
    );
  }
}
