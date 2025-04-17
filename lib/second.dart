import 'package:basic_provider_app/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersProvider>(
      builder:(context, value,child) => Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.small(
          onPressed: (){
            value.add();
          },
          child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text('Second',),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body:  Column(
              children: [
                Text(value.numbers.last.toString(),style: const TextStyle(fontSize: 30),),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.numbers.length,
                    itemBuilder: (context,index){
                      var item = value.numbers[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.toString(),style: const TextStyle(fontSize: 30),),
                      );
                  }),
                ),
              ],
            ),
          ),
    );
  }
}