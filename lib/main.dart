import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutterapp/sequence_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SequenceBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  TextEditingController nilaiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nilaiController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Masukkan Nilai"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          context.read<SequenceBloc>().add(SequenceNumberOne(nilaiN: int.parse(nilaiController.text)));
                        },
                        child: Text("1"),
                      )
                  ),
                  SizedBox(width: 8.0,),
                  Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          context.read<SequenceBloc>().add(SequenceNumberTwo(nilaiN: int.parse(nilaiController.text)));
                        },
                        child: Text("2"),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: RaisedButton(
                        onPressed: () {

                          context.read<SequenceBloc>().add(SequenceNumberThree(nilaiN: int.parse(nilaiController.text)));
                        },
                        child: Text("3"),
                      )
                  ),
                  SizedBox(width: 8.0,),
                  Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          context.read<SequenceBloc>().add(SequenceNumberFour(nilaiN: int.parse(nilaiController.text)));
                        },
                        child: Text("4"),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<SequenceBloc, SequenceState>(
                builder: (context, state) {
                  if (state is SequenceReturn){
                    print("return ${state.hasil}");
                      return Row(
                        children: state.hasil.map((val) => Text(val.toString() + ", ")).toList()
                      );
                  } if (state is SequenceReturnInt){
                    print("return ${state.hasil}");
                    return Row(
                        children: state.hasil.map((val) => Text(val.toString() + ", ")).toList()
                    );
                  } else  {
                    return Text("No Return");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
