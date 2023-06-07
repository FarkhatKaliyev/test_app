import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/src/api/api_repositiry.dart';
import 'package:test_app/src/model/post.dart';
import 'package:test_app/src/model/user.dart';

class UserController extends GetxController {
  RxList<UserModel> users = RxList();
  RxList<Post> posts = RxList();
  TextEditingController title = TextEditingController();
  TextEditingController body = TextEditingController();
  int index = 1;

  Future getUsers() async {
    final response = await ApiRepository.dio.get('users');

    if (response.statusCode == 200) {
      response.data.forEach((user) {
        users.add(UserModel.fromJson(user));
      });
    }
  }

  Future getPosts(int index) async {
    final response = await ApiRepository.dio.get('users/$index/posts');

    if (response.statusCode == 200) {
      response.data.forEach((post) {
        posts.add(Post.fromJson(post));
      });
    }
  }

  Future postComment(int index) async {
    final response = await ApiRepository.dio.post('users/${index + 1}/posts',
        data: {
          'userId': index,
          'title': title.text,
          'body': body.text,
        },
        options: Options(
          headers: {'Content-type': 'application/json; charset=UTF-8'},
        ));
    return response.data;
  }

  @override
  void onInit() {
    getPosts(index);
    getUsers();
    super.onInit();
  }
}
