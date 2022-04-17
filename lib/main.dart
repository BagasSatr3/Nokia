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
      home: MyHomePage(title: 'Home Page'),
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
                        "Laptop HP Pavilon core i4",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
