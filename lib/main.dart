import 'package:engineering_dictionary/database/db_service.dart';
import 'package:engineering_dictionary/provider/engineering_provider.dart';
import 'package:engineering_dictionary/ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: ChangeNotifierProvider(
          create: (_)=> EngineeringProvider(),
          child: HomePage()),
    );
  }
}

