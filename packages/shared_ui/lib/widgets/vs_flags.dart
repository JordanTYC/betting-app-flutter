import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_ui/teams_theme.dart';

class VsFlags extends StatelessWidget {
  final double radius;
  final String team1;
  final String team2;

  const VsFlags({
    super.key,
    required this.radius,
    required this.team1,
    required this.team2,
  });

  @override
  Widget build(BuildContext context) {
    final offset = radius * 1.20;
    final size = radius * 2;
    final radius2 = radius * 0.95;
    return SizedBox(
      width: size + offset + 4,
      height: size + 4,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: offset,
            child: team2 == 'France'
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
                      backgroundImage: teams[team2]?.flag != null
                          ? AssetImage(teams[team2]!.flag, package: 'shared_ui')
                          : null,
                    ),
                  ),
          ),

          Positioned(
            top: 2,
            child: team1 == 'France'
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
                      radius: radius2,
                      backgroundImage: teams[team1]?.flag != null
                          ? AssetImage(teams[team1]!.flag, package: 'shared_ui')
                          : null,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
