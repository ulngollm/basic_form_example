import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  String _name;
  String _email;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                placeholder: 'Имя',
                onChanged: (value) {
                  print(value);
                },
                onEditingComplete: () {
                  print('complete');
                },
                onSubmitted: (value) {
                  _name = value;
                  print('submit ' + value);
                },
              ),
              SizedBox(height: 25),
              CupertinoTextField(
                placeholder: 'Email',
                onChanged: (value) {
                  print(value);
                },
                onEditingComplete: () {
                  print('complete');
                },
                onSubmitted: (value) {
                  _email = value;
                  print('submit ' + value);
                },
              ),
              CupertinoButton.filled(
                  child: Text('Отправить'),
                  onPressed: () {
                    if (_key.currentState.validate()) {
                      print('valid');
                      print({"name": _name, "email": _email});
                    } else
                      print('invalid');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
