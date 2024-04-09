// ignore_for_file: avoid_print, use_key_in_widget_constructors, file_names, todo, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:robbinlaw/widgets/mysnackbar.dart';

class Weight extends StatefulWidget {
  @override
  WeightState createState() => WeightState();
}

class WeightState extends State<Weight> {
  final formKey = GlobalKey<FormState>();

  int repsValue = 1;
  int setsValue = 1;
  late String? type;
  late String? weight;
  late String? reps;
  late String? sets;

  late String? weightUnit = 'kg';

  final TextEditingController typeEditingController = TextEditingController();
  final TextEditingController weightTextEditingController =
      TextEditingController();
  final TextEditingController repsTextEditingController =
      TextEditingController();
  final TextEditingController setsTextEditingController =
      TextEditingController();

  List<String> listItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weights'),
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
                            controller: weightTextEditingController,
                            onChanged: (value) {
                              print(value);
                            },
                            onFieldSubmitted: (text) {
                              print('Submitted Weight Text = $text');
                            },
                            validator: (input) {
                              return input!.length < 1
                                  ? 'min 1 chars please'
                                  : null;
                            },
                            onSaved: (input) {
                              print('onSaved Weight: $input');
                              weight = input;
                            },
                            maxLength: 5,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.track_changes),
                              labelText: 'Weight',
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
                                    weightUnit == 'kg',
                                    weightUnit == 'lb'
                                  ],
                                  onPressed: (int index) {
                                    setState(() {
                                      weight = index == 0 ? 'kg' : 'lb';
                                    });
                                  },
                                  children: <Widget>[
                                    Text('kg'),
                                    Text('lb'),
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
                    child: DropdownButtonFormField<int>(
                      value: repsValue,
                      onChanged: (int? value) {
                        setState(() {
                          repsValue = value!;
                        });
                      },
                      items: List.generate(
                        100,
                        (index) => DropdownMenuItem<int>(
                          value: index + 1,
                          child: Text((index + 1).toString()),
                        ),
                      ),
                      decoration: const InputDecoration(
                        icon: Icon(Icons.text_format_rounded),
                        labelText: 'Reps',
                        helperText: 'min 1, max 100',
                      ),
                    ),
                  ),

                  //4
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: DropdownButtonFormField<int>(
                      value: setsValue,
                      onChanged: (int? value) {
                        setState(() {
                          setsValue = value!;
                        });
                      },
                      items: List.generate(
                        30,
                        (index) => DropdownMenuItem<int>(
                          value: index + 1,
                          child: Text((index + 1).toString()),
                        ),
                      ),
                      decoration: const InputDecoration(
                        icon: Icon(Icons.text_format_rounded),
                        labelText: 'Sets',
                        helperText: 'min 1, max 30',
                      ),
                    ),
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
