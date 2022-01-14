import 'package:flutter/material.dart';
import 'package:flutter_rest_api_demo/models/user_model.dart';
import 'package:flutter_rest_api_demo/services/user_services.dart';

class EditUserScreen extends StatefulWidget {
  final Data data;
  const EditUserScreen({Key? key, required this.data}) : super(key: key);

  @override
  _EditUserScreenState createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  bool status = false;
  Data editedData = Data();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text = widget.data.name!;
    emailController.text = widget.data.email!;
    genderController.text = widget.data.gender!;
    statusController.text = widget.data.status!;
  }

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
                      editedData = Data(
                          name: nameController.text,
                          email: emailController.text,
                          gender: genderController.text,
                          status: statusController.text);
                      Data data = await UserServices()
                          .updateUser(widget.data.id!, editedData);

                      if(data != null) {
                        setState(() {
                          status = true;
                        });
                      } else {
                        status = false;
                      }
                    },
                    icon: const Icon(Icons.done)),
              ),
              const SizedBox(height: 50),
              status
                  ? const Text(
                      'Success',
                      style: TextStyle(color: Colors.green),
                    )
                  : const Text(
                      'Failed',
                      style: TextStyle(color: Colors.red),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
