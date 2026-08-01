import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/providers/shell_appbar_provider.dart';
import 'primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppHeader extends ConsumerWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shellAppBarProvider);

    return AnimatedSlide(
      duration: const Duration(milliseconds: 100),
      offset: state.visible ? Offset.zero : const Offset(0, -1),
      child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        toolbarHeight: 56,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: state.showBackground ? 1 : 0,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bg_appheader.jpg',
                  package: 'shared_ui',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', package: 'shared_ui', height: 30),
            const Spacer(),
            PrimaryBtn(title: 'Connexion', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
