import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/controllers/post_controller.dart';

class MyHomePage extends StatelessWidget {
  final postcon = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Api Data'),
      ),
      body: Obx(() => postcon.isLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: postcon.postlist.length,
              itemBuilder: (_, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postcon.postlist[index].id.toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(postcon.postlist[index].title.toString(),
                              style: TextStyle(fontSize: 15)),
                          Text(postcon.postlist[index].content.toString(),
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
    );
  }
}
