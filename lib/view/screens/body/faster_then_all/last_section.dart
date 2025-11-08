import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamezi/route/router.dart';
import 'package:gamezi/utils/colors.dart';
import 'package:gamezi/utils/text_style.dart';
import 'package:go_router/go_router.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  static const _mobileBreakpoint = 600.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
        child: Column(
          children: [
            const Divider(color: Colors.white, thickness: 2),
            const SizedBox(height: 16),
            LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < _mobileBreakpoint;

                final links = _LinksRow(
                  separatorColor: Colors.white.withValues(alpha: 0.4),
                );

                final copy = Text(
                  '© 2025 Intelizia GameZi. All Rights Reserved.',
                  style: MyFontStyle.kW600(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  softWrap: true,
                );

                if (isMobile) {
                  // Stack vertically for phones
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      copy,
                      const SizedBox(height: 12),
                      links,
                    ],
                  );
                }

                // Side-by-side for desktop/tablet
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Let the copyright text wrap instead of overflow
                    Expanded(child: copy),
                    const SizedBox(width: 16),
                    links,
                  ],
                );
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _LinksRow extends StatelessWidget {
  const _LinksRow({required this.separatorColor});

  final Color separatorColor;

  @override
  Widget build(BuildContext context) {
    // Wrap allows automatic line breaks on small widths
    return Wrap(
      alignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        _LinkText(
          label: 'Terms & Conditions',
          onTap: () => context.goNamed(AppRouteName.terms),
        ),
        _Separator(color: separatorColor),
        _LinkText(
          label: 'Privacy Policy',
          onTap: () => context.goNamed(AppRouteName.privacy),
        ),
        _Separator(color: separatorColor),
        _LinkText(
          label: 'DMCA',
          onTap: () => context.goNamed(AppRouteName.dmca),
        ),
      ],
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 16, color: color);
  }
}

class _LinkText extends StatelessWidget {
  const _LinkText({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: const [Color(0xFF2980B9)],
            // Blend with your primary color for the gradient effect
            stops: const [0.0],
          ).createShader(bounds),
          child: Text(
            label,
            style: MyFontStyle.kW600(
              fontSize: 14,
              color: Colors.white, // visible under shader
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
