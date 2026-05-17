import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: const Text(
          "Registration Form",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(

          key: _formKey,

          child: Column(
            children: [

              // Name
              TextFormField(

                controller: nameController,

                decoration: InputDecoration(
                  labelText: "Name",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Please enter name";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Email
              TextFormField(

                controller: emailController,

                decoration: InputDecoration(
                  labelText: "Email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Please enter email";
                  }

                  if (!value.contains("@")) {
                    return "Enter valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Password
              TextFormField(

                controller: passwordController,

                obscureText: true,

                decoration: InputDecoration(
                  labelText: "Password",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Phone Number
              TextFormField(

                controller: phoneController,

                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  labelText: "Phone Number",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                validator: (value) {

                  if (value == null || value.isEmpty) {
                    return "Please enter phone number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 30),


              ElevatedButton(

                onPressed: () {

                  if (_formKey.currentState!.validate()) {

                    ScaffoldMessenger.of(context).showSnackBar(

                      const SnackBar(
                        content: Text("Registration Successful"),
                      ),
                    );
                  }
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),

                child: const Text(
                  "Register",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}