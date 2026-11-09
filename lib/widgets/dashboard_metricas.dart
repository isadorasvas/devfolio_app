
import 'package:flutter/material.dart';

class DashboardMetricas extends StatelessWidget {
  const DashboardMetricas({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final largura = constraints.maxWidth;

        final colunas = largura >= 850
            ? 4
            : (largura >= 520 ? 2 : 1);

        final espacamento = 14.0;

        final larguraCard =
            (largura - (espacamento * (colunas - 1))) / colunas;

        return Wrap(
          spacing: espacamento,
          runSpacing: espacamento,

          children: [
            SizedBox(
              width: larguraCard,

              child: const _CartaoMetrica(
                titulo: 'Projetos',
                valor: '08',
                descricao: 'Projetos desenvolvidos',
                icone: Icons.folder_open_rounded,
                cor: Color(0xFF5B5FEF),
              ),
            ),

            SizedBox(
              width: larguraCard,

              child: const _CartaoMetrica(
                titulo: 'Tecnologias',
                valor: '06',
                descricao: 'Em aprendizado',
                icone: Icons.code_rounded,
                cor: Color(0xFF0D9B8A),
              ),
            ),

            SizedBox(
              width: larguraCard,

              child: const _CartaoMetrica(
                titulo: 'Certificados',
                valor: '03',
                descricao: 'Cursos concluídos',
                icone: Icons.workspace_premium_outlined,
                cor: Color(0xFFE49A26),
              ),
            ),

            SizedBox(
              width: larguraCard,

              child: const _CartaoMetrica(
                titulo: 'Horas de estudo',
                valor: '120h',
                descricao: 'Tempo dedicado',
                icone: Icons.schedule_rounded,
                cor: Color(0xFF9B59B6),
              ),
            ),
          ],
        );
      },
    );
  }
}

// Widget responsável por exibir cada métrica.
class _CartaoMetrica extends StatelessWidget {
  final String titulo;
  final String valor;
  final String descricao;
  final IconData icone;
  final Color cor;

  const _CartaoMetrica({
    required this.titulo,
    required this.valor,
    required this.descricao,
    required this.icone,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$titulo: $valor. $descricao.',

      child: Card(
        color: Colors.white,
        elevation: 1,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),

        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: cor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Icon(
                  icone,
                  color: cor,
                  size: 22,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                valor,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF20233A),
                ),
              ),

              const SizedBox(height: 4),

              Text(
                titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF34394F),
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                descricao,
                style: const TextStyle(
                  color: Color(0xFF73788B),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

