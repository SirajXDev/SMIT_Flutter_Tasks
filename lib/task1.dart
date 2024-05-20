import 'package:flutter/material.dart';
import 'package:smit_flutter_tasks/task2.dart';


class Task1 extends StatelessWidget {
  Task1({super.key});
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset('assets/images/Ellipse 32.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'SIRAJ UL HAQ',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.phone),
                  labelText: '03156849395',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  labelText: 'sirajxdev@gmail.com',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Task2()),
                  );
                },
                child: const Text('login')),
          ],
        ),
      ),
    );
  }
}
