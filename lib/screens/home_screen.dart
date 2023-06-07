import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller.dart';
import 'package:test_app/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Test App'),
      ),
      body: SizedBox(
        child: Obx(
          () => ListView.builder(
              itemCount: userController.users.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Get.to(DetailsScreen(index: index)),
                  child: Card(
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            userController.users[index].id.toString(),
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      title: Text(
                        userController.users[index].username.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        userController.users[index].name.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
