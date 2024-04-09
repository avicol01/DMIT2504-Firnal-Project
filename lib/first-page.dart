// ignore_for_file: avoid_print, use_key_in_widget_constructors, file_names, todo, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:robbinlaw/widgets/mysnackbar.dart';

// Do not change the structure of this files code.
// Just add code at the TODO's.

class MyFirstPage extends StatefulWidget {
  @override
  MyFirstPageState createState() => MyFirstPageState();
}

class MyFirstPageState extends State<MyFirstPage> {
  final formKey = GlobalKey<FormState>();

// We must make the variable firstName nullable.
  late String? type;

  late String? time;
  late String? speed;
  late String? distance;
  late String? cardioGradient;
  late String? selectedUnit = 'km/h';
  late String? timeUnit = 'min';
  late String? distanceUnit = 'km';

  final TextEditingController typeEditingController = TextEditingController();
  final TextEditingController timeTextEditingController =
      TextEditingController();
  final TextEditingController speedTextEditingController =
      TextEditingController();
  final TextEditingController cardioGradientTextEditingController =
      TextEditingController();
  final TextEditingController distanceTextEditingController =
      TextEditingController();

  final TextEditingController unitTextEditingController =
      TextEditingController();

  List<String> listItems = [];

  bool enabled = false;
  String msg1 = '';
  String msg2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardio'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //1
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      controller: typeEditingController,
                      onChanged: (value) {
                        print(value);
                      },
                      onFieldSubmitted: (text) {
                        print('Submitted Type Text = $text');
                      },
                      validator: (input) {
                        return input!.length < 1 ? 'min 1 chars please' : null;
                      },
                      onSaved: (input) {
                        print('onSaved type: $input');
                        type = input;
                      },
                      maxLength: 20,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.text_format_rounded),
                          labelText: 'Type',
                          helperText: 'min 1, max 20'),
                    ),
                  ),
                  //2
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            controller: distanceTextEditingController,
                            onChanged: (value) {
                              print(value);
                            },
                            onFieldSubmitted: (text) {
                              print('Submitted Distance Text = $text');
                            },
                            validator: (input) {
                              return input!.length < 1
                                  ? 'min 1 chars please'
                                  : null;
                            },
                            onSaved: (input) {
                              print('onSaved distance: $input');
                              time = input;
                            },
                            maxLength: 5,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.track_changes),
                              labelText: 'Distance',
                              helperText: 'min 1, max 5',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              2.5, // Adjust width as needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 255, 222, 185),
                                    width: 1.0,
                                  ),
                                ),
                                child: ToggleButtons(
                                  isSelected: [
                                    distanceUnit == 'km',
                                    distanceUnit == 'm'
                                  ],
                                  onPressed: (int index) {
                                    setState(() {
                                      distanceUnit = index == 0 ? 'km' : 'm';
                                    });
                                  },
                                  children: <Widget>[
                                    Text('km'),
                                    Text('m'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //3
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextFormField(
                            controller: timeTextEditingController,
                            onChanged: (value) {
                              print(value);
                            },
                            onFieldSubmitted: (text) {
                              print('Submitted Time Text = $text');
                            },
                            validator: (input) {
                              return input!.length < 1
                                  ? 'min 1 chars please'
                                  : null;
                            },
                            onSaved: (input) {
                              print('onSaved Time: $input');
                              time = input;
                            },
                            maxLength: 5,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.timer),
                              labelText: 'Time',
                              helperText: 'min 1, max 5',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              2.5, // Adjust width as needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 255, 222, 185),
                                    width: 1.0,
                                  ),
                                ),
                                child: ToggleButtons(
                                  isSelected: [
                                    timeUnit == 'min',
                                    timeUnit == 'hr'
                                  ],
                                  onPressed: (int index) {
                                    setState(() {
                                      timeUnit = index == 0 ? 'min' : 'hr';
                                    });
                                  },
                                  children: <Widget>[
                                    Text('min'),
                                    Text('hr'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //4
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              2, // Adjust width as needed
                          child: TextFormField(
                            controller: speedTextEditingController,
                            onChanged: (value) {
                              print(value);
                            },
                            onFieldSubmitted: (text) {
                              print('Submitted speed Text = $text');
                            },
                            validator: (input) {
                              return input!.length < 1
                                  ? 'min 1 chars please'
                                  : null;
                            },
                            onSaved: (input) {
                              print('onSaved speed: $input');
                              time = input;
                            },
                            maxLength: 5,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.speed),
                              labelText: 'Speed',
                              helperText: 'min 1, max 5',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /
                              2.5, // Adjust width as needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 255, 222, 185),
                                    width: 1.0,
                                  ),
                                ),
                                child: ToggleButtons(
                                  isSelected: [
                                    selectedUnit == 'km/h',
                                    selectedUnit == 'm/h'
                                  ],
                                  onPressed: (int index) {
                                    setState(() {
                                      selectedUnit =
                                          index == 0 ? 'km/h' : 'm/h';
                                    });
                                  },
                                  children: <Widget>[
                                    Text('km/h'),
                                    Text('m/h'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //5
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextFormField(
                      controller: cardioGradientTextEditingController,
                      onChanged: (value) {
                        print(value);
                      },
                      onFieldSubmitted: (text) {
                        print('Submitted Gradient Text = $text');
                      },
                      validator: (input) {
                        return input!.length < 1 ? 'min 1 chars please' : null;
                      },
                      onSaved: (input) {
                        print('onSaved cardioGradiant: $input');
                        speed = input;
                      },
                      maxLength: 5,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.arrow_outward_outlined),
                        labelText: 'Gradient',
                        helperText: 'min 1, max 5',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0, // Set the width
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();

                                // might have to clear all **
                                typeEditingController.clear();
                                MySnackBar(text: 'Hi $type').show();
                                setState(() {});
                              }
                            },
                            child: const Text('Add'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
