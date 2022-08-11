import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Judul Aplikasi
      appBar: AppBar(
        title: const Text('Body Mass Index Calculator'),
      ),

      // Body Aplikasi
      body: Column(
        children: [
          Expanded(child: Container(
            child: Row(
              children: [

                /* Kolom Tombol Male */
                Expanded(
                  child: Column(
                      children: const [
                        Icon(Icons.male_rounded),
                        Text('Male'),
                      ]
                  ),
                ),

                /* Kolom Tombol Female */
                Expanded(
                  child:
                    Column(
                        children: const [
                          Icon(Icons.female_rounded),
                          Text('Female'),
                        ]
                    ),
                )

            ],),
          )),
          Expanded(child: Container(
            color: Colors.brown,
          )),
          Expanded(child: Container(
            color: Colors.red,
          )),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BmiResultScreen(),
                ),
              );
            },
            child: Container(
              color: Colors.blue,
              height: 100 ,
              padding: const EdgeInsets.all(20),
              child: const Center(
                child: Text(
                  'Enter your height and weight to calculate your Body Mass Index (BMI).',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
