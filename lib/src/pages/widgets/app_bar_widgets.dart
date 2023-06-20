import 'package:ankigpt/src/pages/widgets/extensions.dart';
import 'package:ankigpt/src/providers/developer_mode_provider.dart';
import 'package:ankigpt/src/providers/generate_provider.dart';
import 'package:ankigpt/src/providers/has_plus_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends ConsumerWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tooltip(
      message: 'Home',
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          ref.read(generateNotifierProvider.notifier).reset();
          Navigator.maybePop(context);
        },
        child: SvgPicture.asset(
          'assets/logo/raw_logo.svg',
        ),
      ),
    );
  }
}

class AppBarTitle extends ConsumerWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasPlus = ref.watch(hasPlusProvider);
    return GestureDetector(
      onLongPress: () {
        ref.read(hasDeveloperModeProvider.notifier).toggle();
        final isDeveloperMode = ref.read(hasDeveloperModeProvider);
        context.showTextSnackBar(
            'Developer mode is now ${isDeveloperMode ? 'enabled' : 'disabled'}');
      },
      child: Text('AnkiGPT${hasPlus ? ' Plus' : ''}'),
    );
  }
}

class AccountPageIconButton extends StatelessWidget {
  const AccountPageIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Account',
      icon: const Icon(Icons.account_circle),
      onPressed: () => Navigator.of(context).pushNamed('/account'),
    );
  }
}
