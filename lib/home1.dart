import 'package:basic_provider_app/list_provider.dart';
import 'package:basic_provider_app/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
            title: const Text('Home',),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body:  Column(
              children: [
                Text(value.numbers.last.toString(),style: const TextStyle(fontSize: 30),),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.numbers.length,
                    itemBuilder: (context,index){
                      var item = value.numbers[index];
                      return Text(item.toString(),style: const TextStyle(fontSize: 30),);
                  }),
                ),

                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Second()));
                  }, 
                  child: const Text('Next'))
              ],
            ),
          ),
    );
  }
}