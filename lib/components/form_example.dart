import 'package:flutter/material.dart';
import 'package:zibbo_flutter_midsem/screens/dashboard.dart';

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

              if (value != 'zibo'.trim()) {
                return 'Invalid username';
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

              if (value != 'password'.trim()) {
                return 'Wrong password';
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
                  const SnackBar(content: Text('Signing in...'))
                );

                Future.delayed(const Duration(seconds: 1)).then((value) => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard())
                ));
              }
            },
            child: const Text('Submit')
          )
        ],
      ),
    );
  }
}
