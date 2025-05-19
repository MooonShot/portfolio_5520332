import 'package:flutter/material.dart';

class ProfileFormPage extends StatefulWidget {
  final String initialName;
  final String initialEmail;
  final String initialAbout;

  ProfileFormPage({
    this.initialName = '',
    this.initialEmail = '',
    this.initialAbout = '',
  });

  @override
  _ProfileFormPageState createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _aboutController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _emailController = TextEditingController(text: widget.initialEmail);
    _aboutController = TextEditingController(text: widget.initialAbout);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil bearbeiten')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: _nameController,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'Bitte gültige E-Mail eingeben';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Über mich'),
                maxLines: 3,
                controller: _aboutController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Absenden'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context, {
                      'name': _nameController.text,
                      'email': _emailController.text,
                      'about': _aboutController.text,
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
