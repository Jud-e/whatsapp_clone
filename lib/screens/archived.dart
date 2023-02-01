import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Archived extends StatefulWidget {
  const Archived({super.key});

  @override
  State<Archived> createState() => _ArchivedState();
}

class _ArchivedState extends State<Archived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Archived"),
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(20, (index) {
              return ListTile(
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          // border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(50))),
                ),
                title: const Text("mkj"),
                subtitle: const Text("subtitle"),
                trailing: const Text("10:48am"),
              );
            })
          ],
        ),
      ),
    );
  }
}
