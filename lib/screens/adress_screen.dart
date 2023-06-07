import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller.dart';

class AdressScreen extends StatelessWidget {
  AdressScreen({Key? key, required this.index}) : super(key: key);
  int index;

  UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Adress'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Street',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.street.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Suite',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.suite.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'City',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.city.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'ZipCode',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.zipcode.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Geo-Lat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.geo!.lat.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Geo-Lng',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].address!.geo!.lng.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
