import 'package:api_repo_provider/provider/home_provider.dart';
import 'package:api_repo_provider/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ///You can use any provider: Either ChangeNotifierProvider or ListenableProvider
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
        // ListenableProvider<HomeProvider>(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
