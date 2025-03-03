import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController textController = TextEditingController();
  bool? isChecked = false;
  bool isSwithed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: textController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              setState(() {});
            },
          ),
          const SizedBox(
            height: 5,
          ),
          Text('Teks : ${textController.text}'),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                //tristate: true,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              const Text('Check box')
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          CheckboxListTile(
            value: isChecked,
            //tristate: true,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
            title: const Text('Checkbox Listtile'),
            tileColor: Colors.red,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              /**
               * Switch widget
               */
              Switch(
                value: isSwithed,
                onChanged: (value) {
                  setState(() {
                    isSwithed = value;
                  });
                },
              ),
              const Text('Switch'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          /**
          * SwitchListTile widget
          */
          SwitchListTile(
            value: isSwithed,
            title: const Text('Switch Listtile'),
            tileColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                isSwithed = value;
              });
            },
          )
        ],
      ),
    );
  }
}
