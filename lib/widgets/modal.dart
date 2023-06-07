import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller.dart';

class AddComment extends StatelessWidget {
  const AddComment({
    super.key,
    required this.userController,
    required this.index,
  });

  final UserController userController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Добавить коментарий',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          const Row(
            children: [
              Text(
                'Ваше имя:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextField(
                controller: userController.title,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, top: 15),
                  constraints: const BoxConstraints(maxWidth: 368, maxHeight: 50),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(
                      width: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                'Текст комментария:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextField(
                controller: userController.body,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, top: 15),
                  constraints: const BoxConstraints(maxWidth: 368, maxHeight: 50),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(
                      width: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () async {
                await userController.postComment(index).then((value) => print(value));
              },
              child: const Text(
                'Добавить комментарий',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () => Get.back(),
              child: const Text(
                'Закрыть',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
