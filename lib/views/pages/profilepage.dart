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
  double sliderValue = 0.0;

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
              // .adaptive method
              Checkbox.adaptive(
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
          // .adaptive method
          CheckboxListTile.adaptive(
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
              // .adaptive method
              Switch.adaptive(
                value: isSwithed,
                onChanged: (value) {
                  setState(() {
                    isSwithed = value;
                  });
                },
              ),
              const Text('Swith'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          // .adaptive method,
          SwitchListTile.adaptive(
            value: isSwithed,
            title: const Text('Switch Listtile'),
            tileColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                isSwithed = value;
              });
            },
          ),
          const SizedBox(
            height: 5,
          ),
          /**
           * Slider widget
           * Coba isikan property : max dan divisions
           */
          Slider(
            value: sliderValue,
            //max: 100.0,
            //divisions: 20,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          const SizedBox(
            height: 5,
          ),
          Text('Nilai : $sliderValue'),
        ],
      ),
    );
  }
}
