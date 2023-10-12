import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:urban_partner/presentation/home_screen/dashboard_view.dart';
import 'package:urban_partner/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'urban_partner',
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      home: Dashboard(),
    );
  }
}
