import 'package:flutter/material.dart';
import 'package:flutter_rest_api_demo/models/user_model.dart';
import 'package:flutter_rest_api_demo/services/user_services.dart';

class ListUsersScreen extends StatefulWidget {
  const ListUsersScreen({Key? key}) : super(key: key);

  @override
  State<ListUsersScreen> createState() => _ListUsersScreenState();
}

class _ListUsersScreenState extends State<ListUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List Users'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Data>>(
                future: UserServices().getListUsers(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }

                  final List<Data>? listUsers = snapshot.data;
                  return ListView.builder(
                    itemCount: listUsers?.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ReusableRow(
                                  title: 'ID',
                                  value: listUsers?[index].id.toString()??''),
                              ReusableRow(
                                  title: 'Name',
                                  value: listUsers?[index].name
                                      .toString() ?? ''),
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

class ReusableRow extends StatelessWidget {
  final String title, value;
  const ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
