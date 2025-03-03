import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController textController = TextEditingController();
  bool isChecked = false;

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
              /**
               * Checkbox widget
               */
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
              Text('Check box')
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CheckboxListTile(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
            title: Text('Checkbox Listtile'),
            tileColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
