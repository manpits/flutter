import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController textController = TextEditingController();
  bool? isChecked = false;
  bool isSwithed = false;
  double sliderValue = 0.0;
  String onTapImage = 'Coba tap / double-tap / zoom gambar diatas !';
  int? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        //
        // SingleChildScrollView widget
        //
        child: SingleChildScrollView(
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
              Slider.adaptive(
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
              const SizedBox(
                height: 5,
              ),
              /**
             * Untuk mendapatkan efek Inkwell pada gambar kita bisa menempatkan widget Image dan widget InkWell pada sebuah Stack
             * karena InkWell tidak bisa menggambar efek tinta di atas widget non-Material seperti Image, maka
             * Tambahkan Material sebagai parent dari InkWell, karena efek ripple hanya bisa muncul di dalam Material widget
             * Jangan lupa set color dari widget Material transparent agar tidak menutupi widget Image
             */
              Stack(
                children: [
                  Image.asset(
                    'assets/images/bg.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.blueAccent[50],
                      onTap: () {
                        setState(() {
                          onTapImage =
                              'Anda baru saja melakukan tap pada gambar !';
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          onTapImage =
                              'Anda baru saja melakukan double tap pada gambar !';
                        });
                      },
                      child: Ink(
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(onTapImage),
              const SizedBox(
                height: 5,
              ),
              /**
             * Untuk membuat efek ripple ketika widget di tap dengan widget Inkwell
             */
              InkWell(
                splashColor: Colors.red,
                child: Ink(
                  height: 100,
                  color: Colors.amber,
                ),
                onTap: () {
                  setState(() {
                    onTapImage = 'Anda melakukan tap pada widget Inkwell !';
                  });
                },
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Elevated Button'),
              ),
              const SizedBox(
                height: 5,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text('Filled Button'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red[50],
                ),
                child: const Text('Text Button'),
              ),
              const SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                ),
                child: const Text('Outline Button'),
              ),
              const SizedBox(
                height: 5,
              ),
              DropdownButton(
                // property 'value' SEBAIKNYA lebih dulu di deklarasikan
                items: const [
                  DropdownMenuItem(
                    // property 'value' HARUS lebih dulu di deklarasikan
                    value: 0,
                    child: Text('Menu 1'),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Menu 2'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Menu 3'),
                  ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    dropdownValue = value;
                  });
                },
                value: dropdownValue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
