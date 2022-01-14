import 'package:flutter/material.dart';
import 'package:flutter_rest_api_demo/models/user_model.dart';
import 'package:flutter_rest_api_demo/screens/edit_user_screen.dart';
import 'package:flutter_rest_api_demo/services/user_services.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  _CreateUserScreenState createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  bool status = false;
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                controller: nameController,
                decoration:
                    InputDecoration(labelText: 'Name', hintText: 'Name'),
              ),
              TextFormField(
                controller: emailController,
                decoration:
                    InputDecoration(labelText: 'Email', hintText: 'Email'),
              ),
              TextFormField(
                controller: genderController,
                decoration: InputDecoration(
                    labelText: 'Gender', hintText: 'Gender(Male/Female)'),
              ),
              TextFormField(
                controller: statusController,
                decoration: const InputDecoration(
                    labelText: 'Status', hintText: 'Status(Active/Inactive)'),
              ),
              const SizedBox(height: 30),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: IconButton(
                    onPressed: () async {
                      Data newUserData = await UserServices().createUser(
                          nameController.text,
                          emailController.text,
                          genderController.text,
                          statusController.text);

                      if (newUserData != null) {
                        setState(() {
                          status = true;
                        });
                        Data data = Data(
                            name: nameController.text,
                            email: emailController.text,
                            gender: genderController.text,
                            status: statusController.text);
                      } else {
                        setState(() {
                          status = false;
                        });
                      }
                    },
                    icon: const Icon(Icons.done)),
              ),
              const SizedBox(height: 50),
              status
                  ? Column(
                children: [
                  const Text(
                    'Failed',
                    style: TextStyle(color: Colors.red),
                  ),
                  GestureDetector(
                    child: const Text('Edit'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditUserScreen(data: data)));
                    },
                  ),
                ],
              )
                  : const Text(
                      'Failed',
                      style: TextStyle(color: Colors.red),
                    ),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
