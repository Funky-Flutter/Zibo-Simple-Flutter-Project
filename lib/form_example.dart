import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "username",
            ),

            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter a username';
              }

              return null;
            },
          ),

          // add some space between the two fields
          const SizedBox(height: 10),

          TextFormField(
            decoration: const InputDecoration(
              labelText: "password"
            ),

            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'please enter your password';
              }

              return null;
            },
          ),

          // add some space between the two fields
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                if(_key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing data...'))
                  );
                }
              },
              child: const Text('Submit')
          )
        ],
      ),
    );
  }
}
