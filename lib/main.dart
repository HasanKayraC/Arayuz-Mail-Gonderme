import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  void _incrementCounter() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.8,
              child: 
              ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Hasan Kayra"),
                    subtitle: Text("Bir garip köylü"),
                    trailing: IconButton(icon: Icon(Icons.call), onPressed: () async { 
                       {final toEmail = 'hasankayra1712@gmail.com' ;
final subject = 'Görüşmeniz için hatırlatma';
final message =
     'Selam Hasan! Bir kullanici senle görüşmek istedi';
final url = 'mailto:$toEmail?subject=${subject}&body=${message}';

 if (await canLaunch(url))
   await launch(url);}
                      
 },),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
      
    );
  }
}

