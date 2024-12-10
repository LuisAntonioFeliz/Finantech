import 'package:financiera_pagina/widgets/app_bar_actions.dart';
import 'package:financiera_pagina/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A237E),
          title: const Text('FinanTech', style: TextStyle(color: Colors.white)),
          actions: isDesktop ? const [AppBarActions()] : null,
        ),
        drawer: isDesktop ? null : const CustomNavigationDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 48,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Contactenos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Form(
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                                labelText: 'Nombre',
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.person)),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                                labelText: 'Teléfono',
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.phone)),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                                labelText: 'Mensaje',
                                border: OutlineInputBorder(),
                                icon: Icon(Icons.mail)),
                            maxLines: 5,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton.icon(
                              onPressed: () => {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text('Mensaje Enviado')))
                                  },
                              icon: const Icon(Icons.send, color: Colors.white),
                              label: const Text("Enviar",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[900]))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
