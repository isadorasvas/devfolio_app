
import 'package:flutter/material.dart';

import 'widgets/dashboard_metricas.dart';
import 'widgets/cartao_perfil.dart';

void main() {
  runApp(const DevFolioApp());
}

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5B5FEF),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
      ),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.code_rounded,
              color: Color(0xFF5B5FEF),
            ),
            SizedBox(width: 10),
            Text(
              'DevFolio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Chip(
                avatar: const Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 10,
                ),
                label: const Text('Disponível para projetos'),
                backgroundColor: Colors.white,
                side: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final largura = constraints.maxWidth;

            final espacamento = largura < 600 ? 16.0 : 24.0;
            final padding = largura < 600 ? 16.0 : 32.0;

            return SingleChildScrollView(
              padding: EdgeInsets.all(padding),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nosso portfólio',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF20233A),
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Conheça um pouco sobre nós, nossas habilidades e nossos projetos.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF62677B),
                        ),
                      ),

                      SizedBox(height: espacamento),

                      const CartaoPerfil(),

                      SizedBox(height: espacamento),

                      const Text(
                        'Dashboard de métricas',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF20233A),
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Resumo de nossas jornadas como desenvolvedoras.',
                        style: TextStyle(
                          color: Color(0xFF62677B),
                        ),
                      ),

                      const SizedBox(height: 16),

                      const DashboardMetricas(),

                      SizedBox(height: espacamento),

                      const SecaoHabilidades(),

                      SizedBox(height: espacamento),

                      const SecaoProjetos(),

                      const SizedBox(height: 32),

                      const Center(
                        child: Text(
                          'Desenvolvido com Flutter • Projeto PPDM 2026',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF777C8F),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// SEÇÃO DE HABILIDADES

class SecaoHabilidades extends StatelessWidget {
  const SecaoHabilidades({super.key});

  @override
  Widget build(BuildContext context) {
    final habilidades = [
      'Flutter',
      'Dart',
      'HTML',
      'CSS',
      'JavaScript',
      'Banco de Dados',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nossas habilidades',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF20233A),
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: habilidades.map((habilidade) {
            return Chip(
              label: Text(habilidade),
              backgroundColor: Colors.white,
              side: BorderSide(
                color: Colors.grey.shade300,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

// SEÇÃO DE PROJETOS

class SecaoProjetos extends StatelessWidget {
  const SecaoProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nossos projetos',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF20233A),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          color: Colors.white,
          elevation: 1,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFFE9E9FF),
              child: Icon(
                Icons.code,
                color: Color(0xFF5B5FEF),
              ),
            ),
            title: const Text(
              'DevFolio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Aplicativo de portfólio desenvolvido com Flutter.',
            ),
          ),
        ),
      ],
    );
  }
}

