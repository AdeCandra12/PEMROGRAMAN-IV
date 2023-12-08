import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyShared extends StatefulWidget {
  MyShared({super.key});

  @override
  State<MyShared> createState() => _MySharedState();
}

class _MySharedState extends State<MyShared> {
  final _inputData = TextEditingController();
  final _viewData = TextEditingController();

  late SharedPreferences data;

  void saveData() async {
    data = await SharedPreferences.getInstance();
    data.setString('input', _inputData.text).toString();
    _inputData.clear();
  }

  void checkData() async {
    data = await SharedPreferences.getInstance();
    _viewData.text = data.getString('input').toString();
  }

  void removeData() async {
    data = await SharedPreferences.getInstance();
    data.remove('input');
    _viewData.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences - Fatwa'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _inputData,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 242, 254, 255),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: const Text('Save'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 8.0,
                ),
                child: TextFormField(
                  controller: _viewData,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 242, 254, 255),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    checkData();
                  },
                  child: const Text('Get Value'),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    removeData();
                  },
                  child: const Text('Delete Value'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
