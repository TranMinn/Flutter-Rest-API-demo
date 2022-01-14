import 'package:flutter/material.dart';
import 'package:flutter_rest_api_demo/models/post_model.dart';
import 'package:flutter_rest_api_demo/services/post_services.dart';

class ListPostsScreen extends StatefulWidget {
  const ListPostsScreen({Key? key}) : super(key: key);

  @override
  State<ListPostsScreen> createState() => _ListPostsScreenState();
}

class _ListPostsScreenState extends State<ListPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List Posts'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Data>>(
                future: PostServices().getListPostData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }

                  final List<Data>? listPostData = snapshot.data;
                  print(listPostData);
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: listPostData?.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(listPostData?[index].id.toString() ?? ''),
                              Text(listPostData?[index].title.toString() ?? ''),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
