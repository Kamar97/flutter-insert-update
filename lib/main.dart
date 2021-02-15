import 'package:flutter/material.dart';
import 'database_helper.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQFlite Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () async {
                int i = await DatabaseHelper.instance
                    .insert({DatabaseHelper.columnName: 'Saheb'});
                print('the inserted id is $i');
              },
              child: Text('insert'),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('query'),
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('update'),
              color: Colors.pink,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('delete'),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
