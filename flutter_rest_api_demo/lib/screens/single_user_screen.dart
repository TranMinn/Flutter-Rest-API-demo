import 'package:flutter/material.dart';
import 'package:flutter_rest_api_demo/models/user_model.dart';
import 'package:flutter_rest_api_demo/services/user_services.dart';

class SingleUserScreen extends StatelessWidget {
  const SingleUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Data>(
        future: UserServices().getSingleUser(),
        builder: (context, snapshot) {

          if(!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          Data? user = snapshot.data;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user?.id.toString()??''),
                Text(user?.name.toString()??''),
              ],
            ),
          );
        }
      ),
    );
  }
}
