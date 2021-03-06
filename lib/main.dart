import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Home Shop'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ListTile(
                      leading: Image.network("data:image/jpeg;base64,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"),
                      title: Text(
                        "Nokia C20",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Bidik dengan flash kamera, bagikan dengan 4G.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
