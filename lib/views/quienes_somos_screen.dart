import 'package:financiera_pagina/widgets/app_bar_actions.dart';
import 'package:financiera_pagina/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:financiera_pagina/widgets/feature_card.dart';

class QuienesSomos extends StatelessWidget {
  const QuienesSomos({super.key});

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
                        'FinanTech',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        child: Text(
                          'FinanTech es una agencia financiera dedicada a ofrecer diferentes modos de prestamos segun las necesidades de nuestros clientes.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
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
                                icon: Icons.people,
                                title: "Misión",
                                description:
                                    'Ofrecer a nuestros clientes las mejores formas de pago de prestamos segun sus necesidades.',
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 13, 71, 161),
                              child: FeatureCard(
                                icon: Icons.people,
                                title: "Visión",
                                description:
                                    'Ser la agencia financiera #1 que le brinde a sus clientes las diferentes facilidades de prestamos.',
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 13, 71, 161),
                              child: FeatureCard(
                                icon: Icons.people,
                                title: "Valores",
                                description:
                                    'Respeto, Honestidad, Solidaridad, Transparencia, Compromiso y Confidencialidad',
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
