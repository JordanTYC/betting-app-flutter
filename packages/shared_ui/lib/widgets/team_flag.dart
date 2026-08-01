import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_ui/teams_theme.dart';

class TeamFlag extends StatelessWidget {
  final String team;
  final double radius;

  const TeamFlag({super.key, required this.team, required this.radius});

  @override
  Widget build(BuildContext context) {
    final size = radius * 3;
    return team == 'France'
        ? SvgPicture.asset(
            'assets/france.svg',
            package: 'shared_ui',
            width: size,
            height: size,
          )
        : Container(
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: AssetImage(
                teams[team]!.flag,
                package: 'shared_ui',
              ),
            ),
          );
  }
}
