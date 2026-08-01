import 'dart:ui';
import 'package:shared_ui/team_colors.dart';

final Map<String, TeamColors> teams = {
  "France": TeamColors(
    primary: const Color(0xFF1E2358),
    secondary: const Color(0xFF016AB0),
    accent: const Color(0xFFD91C1F),
    flag: 'assets/france.svg',
  ),
  "Norvège": TeamColors(
    primary: const Color(0xFF101318),
    secondary: const Color(0xFFC91F32),
    accent: const Color(0xFFCFBA7F),
    flag: 'assets/flag_norway.png',
  ),
  "Mexique": TeamColors(
    primary: const Color(0xFF304E46),
    secondary: const Color(0xFF00964D),
    accent: const Color(0xFFED2B3D),
    flag: 'assets/flag_mexico.png',
  ),
  "Suède": TeamColors(
    primary: const Color(0xFF304E46),
    secondary: const Color(0xFF00964D),
    accent: const Color(0xFFED2B3D),
    flag: 'assets/flag_sweden.jpg',
  ),
  "Côte d'Ivoire": TeamColors(
    primary: const Color(0xFF304E46),
    secondary: const Color(0xFF00964D),
    accent: const Color(0xFFED2B3D),
    flag: 'assets/flag_ivory.png',
  ),
  "Équateur": TeamColors(
    primary: const Color(0xFF304E46),
    secondary: const Color(0xFF00964D),
    accent: const Color(0xFFED2B3D),
    flag: 'assets/flag_ecuador.png',
  ),
};
