import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_main_idn/number_provider.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => NumberProfider(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<NumberProfider>(
              builder:(context, numberProfider, _) => Text(
                '${numberProfider.number}',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          body: Center(
            child: Consumer<NumberProfider>(
              builder: (context, numberProfider, _) => Text(
                '${numberProfider.number}',
                style: TextStyle(fontSize: 50.0),
              ),
            ),
          ),
          floatingActionButton: Consumer<NumberProfider>(
            builder: (context, numberProvider, _) =>FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                numberProvider.number++;
              },
            )
          ),
        ),
      ),
    );
  }
}
