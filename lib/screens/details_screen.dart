import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller.dart';
import 'package:test_app/screens/adress_screen.dart';
import 'package:test_app/screens/posts_screen.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.index}) : super(key: key);
  int index;

  UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          userController.users[index].username.toString(),
        ),
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
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].name.toString(),
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
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].email.toString(),
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
                    'Phone',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].phone.toString(),
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
                    'Website',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].website.toString(),
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
                    'Company',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].company!.name.toString(),
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
                    'Bs',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].company!.bs.toString(),
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
                    'Catch Phrase',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    userController.users[index].company!.catchPhrase.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
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
                    'Adress',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                    child: TextButton(
                      onPressed: () => Get.to(AdressScreen(index: index)),
                      child: Text(
                        userController.users[index].address!.street.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Posts',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                    child: TextButton(
                      onPressed: () => Get.to(PostScreen(index: index)),
                      child: Text(
                        userController.posts[index].title.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
