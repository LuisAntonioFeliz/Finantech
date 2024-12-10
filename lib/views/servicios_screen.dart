import 'package:financiera_pagina/widgets/app_bar_actions.dart';
import 'package:financiera_pagina/widgets/feature_card.dart';
import 'package:financiera_pagina/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'FinanTech',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF1A237E),
          actions: isDesktop ? const [AppBarActions()] : null,
        ),
        drawer: isDesktop ? null : const CustomNavigationDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 48,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Conozca más a fondo todos los servicios que te ofrecemos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      SizedBox(
                        width: 1000,
                        child: GridView.count(
                          crossAxisCount: isDesktop ? 3 : 1,
                          shrinkWrap: true,
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 24,
                          childAspectRatio: 1.2,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            Card(
                              color: Color.fromARGB(255, 13, 71, 161),
                              child: FeatureCard(
                                icon: Icons.monetization_on_outlined,
                                title: "Prestamos Personales",
                                description:
                                    'Ya sea un viaje, estudios o cualquiera que sea tu necesidad, nosotros te ofrecemos un plan que se adapte a ti.',
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 13, 71, 161),
                              child: FeatureCard(
                                icon: Icons.house,
                                title: "Prestamos Hipotecarios",
                                description:
                                    'Finantech te brinda un sin limite de opciones finacieras para que adquieras la casa de tus sueños.',
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 13, 71, 161),
                              child: FeatureCard(
                                icon: Icons.business_center,
                                title: "Prestamos de Negocio",
                                description:
                                    'Deseas emprender un nuevo negocio? Nosotros te apoyamos con un plan que se adapte a tus necesidades para construir la empresa que deseas crear.',
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 45),
                      const Text(
                          "Listo para empezar con nosotros? Haz click en el botón para contactarnos",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                          onPressed: () => {
                                Navigator.pushNamed(context, '/contacto'),
                              },
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          label: const Text("Contactenos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
