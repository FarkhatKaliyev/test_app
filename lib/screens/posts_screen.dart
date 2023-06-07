import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller.dart';
import 'package:test_app/widgets/modal.dart';

class PostScreen extends StatelessWidget {
  PostScreen({Key? key, required this.index}) : super(key: key);
  int index;

  UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.bottomSheet(
            AddComment(userController: userController, index: index),
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Posts'),
      ),
      body: SizedBox(
        child: Obx(
          () => ListView.builder(
              itemCount: userController.posts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(userController.posts[index].id.toString())),
                    ),
                    title: Text(userController.posts[index].title.toString()),
                    subtitle: Text(
                      userController.posts[index].body.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
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
