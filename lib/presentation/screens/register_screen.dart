import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrarse"),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/1200px-User_icon_2.svg.png",
                width: 300,
              ),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              const SizedBox(height: 20),
              FilledButton.tonalIcon(
                onPressed: () {},
                icon: const Icon(Icons.person),
                label: const Text("Crear Usuario"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
