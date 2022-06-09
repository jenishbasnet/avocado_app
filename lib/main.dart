import 'package:avocado_app/pages/ViewOrder.dart';
import 'package:avocado_app/pages/navigation.dart';
import 'package:avocado_app/providers/list_orders_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Avacado',
            theme: ThemeData(
              primarySwatch: Colors.lightBlue,
            ),
            home: ChangeNotifierProvider(
              create: (context) => ListOrderProvider(),
              builder: (context, child) {
                return cusNav();
              },
            ),
            routes: {
              '/view': (context) => OrderDetails(),
            },
          );
        });
  }
}
