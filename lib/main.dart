import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
import 'package:flutter_liga_stavok/utils/logging.dart';
import 'package:flutter_liga_stavok/widgets/controls/controls.dart';
import 'package:flutter_liga_stavok/widgets/liga_stavok.dart';
import 'package:flutter_liga_stavok/widgets/placeholder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupLogging();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liga Stavok Flutterthon',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Liga Stavok Flutterthon'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    injectionsInit();
  }

  @override
  void dispose() {
    super.dispose();

    injectionsDispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        physics: scrollPhysics,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Controls(),
            LigaStavok(),
            PlaceHolder(),
          ],
        ),
      ),
    );
  }
}
