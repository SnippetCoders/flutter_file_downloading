import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'download_provider.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp>  {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FileDownloaderProvider(),
          child: HomePage(),
        ),
      ],
      child: MaterialApp(
          title: 'File Downloader',
          debugShowCheckedModeBanner: false,
          home: SafeArea(bottom: false, 
            child: Scaffold(
              primary: false,
              body: HomePage()
            )
          )
      )
    );
  }
}
