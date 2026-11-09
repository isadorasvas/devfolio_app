
import 'package:flutter/material.dart';

class CartaoPerfil extends StatelessWidget {
  const CartaoPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),

      child: Padding(
        padding: const EdgeInsets.all(24),

        child: LayoutBuilder(
          builder: (context, constraints) {
            final conteudo = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OLÁ, EU SOU',
                  style: TextStyle(
                    color: Color(0xFF5B5FEF),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Seu Nome',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF20233A),
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'Estudante de Desenvolvimento de Sistemas',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF555B70),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 14),

                const Text(
                  'Sou estudante e estou desenvolvendo minhas habilidades em programação. '
                  'Gosto de aprender novas tecnologias e transformar ideias em projetos.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Color(0xFF62677B),
                  ),
                ),

                const SizedBox(height: 18),

                const Wrap(
                  spacing: 8,
                  runSpacing: 8,

                  children: [
                    _InfoItem(
                      icon: Icons.location_on_outlined,
                      texto: 'São Paulo, Brasil',
                    ),

                    _InfoItem(
                      icon: Icons.school_outlined,
                      texto: 'PPDM',
                    ),
                  ],
                ),
              ],
            );

            if (constraints.maxWidth < 600) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _AvatarPerfil(),
                  const SizedBox(height: 20),
                  conteudo,
                ],
              );
            }

            return Row(
              children: [
                const _AvatarPerfil(),
                const SizedBox(width: 28),
                Expanded(child: conteudo),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Avatar ilustrativo do desenvolvedor.
class _AvatarPerfil extends StatelessWidget {
  const _AvatarPerfil();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Imagem ilustrativa do perfil do desenvolvedor.',
      image: true,

      child: Container(
        width: 132,
        height: 132,

        decoration: BoxDecoration(
          color: const Color(0xFFE9EAFE),
          borderRadius: BorderRadius.circular(24),
        ),

        child: const Center(
          child: Icon(
            Icons.person,
            size: 76,
            color: Color(0xFF5B5FEF),
          ),
        ),
      ),
    );
  }
}

// Informações adicionais do perfil.
class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String texto;

  const _InfoItem({
    required this.icon,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        icon,
        size: 17,
        color: const Color(0xFF5B5FEF),
      ),

      label: Text(texto),

      backgroundColor: const Color(0xFFF3F4FF),
      side: BorderSide.none,
    );
  }
}

