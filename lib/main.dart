import 'package:flutter/material.dart';
import 'package:todo/todo.dart';


void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Todo",),
                Tab(text: "Completed",),
                Tab(text: "deleted",),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body:  TabBarView(
            children: [
              SearchBox(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            
          },
          child: Icon(Icons.add),),
        ),
      ),
    );
  }
}