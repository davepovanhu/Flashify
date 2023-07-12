import 'dart:ui';

import 'package:ankigpt/src/models/cards_list_view.dart';
import 'package:ankigpt/src/pages/widgets/ankigpt_card.dart';
import 'package:ankigpt/src/providers/cards_list_controller.dart';
import 'package:ankigpt/src/providers/scroll_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void _goToPage(BuildContext context, int page) {
  final location = GoRouterState.of(context).location;
  final currentUri = Uri.parse(location);
  context.go(
    currentUri.replace(
      queryParameters: {
        ...currentUri.queryParameters,
        'page': '$page',
      },
    ).toString(),
  );
}

class PaginationControl extends ConsumerWidget {
  const PaginationControl({
    super.key,
  });

  void onPageChanged(WidgetRef ref, CardsListView? prev, CardsListView next) {
    final hasCurrentPageChanged = prev?.currentPage != next.currentPage;
    if (hasCurrentPageChanged) {
      _scrollToTop(ref);
    }
  }

  void _scrollToTop(WidgetRef ref) {
    ref.read(scrollControllerProvider).animateTo(
          250,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutExpo,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      cardsListControllerProvider,
      (prev, next) => onPageChanged(ref, prev, next),
    );

    final view = ref.watch(cardsListControllerProvider);
    return IconTheme(
      data: Theme.of(context).iconTheme.copyWith(
            size: 12,
          ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _PreviousButton(
              isEnabled: view.canPressPrevious,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    view.totalPages,
                    (index) => _PageNumber(
                      pageNumber: index + 1,
                      currentPage: view.currentPage,
                    ),
                  ),
                ],
              ),
            ),
            _NextButton(
              isEnabled: view.canPressNext,
            )
          ],
        ),
      ),
    );
  }
}

class _PageNumber extends StatelessWidget {
  const _PageNumber({
    required this.pageNumber,
    required this.currentPage,
  });

  final int pageNumber;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final isActive = pageNumber == currentPage;
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: isActive
          ? _PageNumberActive(pageNumber: pageNumber)
          : _PageNumberInactive(pageNumber: pageNumber),
    );
  }
}

class _PageNumberInactive extends ConsumerWidget {
  const _PageNumberInactive({
    required this.pageNumber,
  });

  final int pageNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        _goToPage(context, pageNumber);
        ref.read(cardsListControllerProvider.notifier).setPage(pageNumber);
      },
      borderRadius: BorderRadius.circular(5),
      child: _PageNumberBase(
        text: '$pageNumber',
      ),
    );
  }
}

class _PageNumberActive extends StatelessWidget {
  const _PageNumberActive({
    required this.pageNumber,
  });

  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return AnkiGptCard(
      borderRadius: BorderRadius.circular(5),
      padding: const EdgeInsets.all(0),
      child: _PageNumberBase(
        text: '$pageNumber',
      ),
    );
  }
}

class _PageNumberBase extends StatelessWidget {
  const _PageNumberBase({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontFeatures: [
            const FontFeature.tabularFigures(),
          ],
        ),
      ),
    );
  }
}

class _PreviousButton extends ConsumerWidget {
  const _PreviousButton({
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: isEnabled
          ? () {
              final currentPage =
                  ref.read(cardsListControllerProvider).currentPage;
              _goToPage(context, currentPage - 1);
              ref.read(cardsListControllerProvider.notifier).previousPage();
            }
          : null,
      label: const Text('Previous'),
      icon: const Icon(Icons.arrow_back),
    );
  }
}

class _NextButton extends ConsumerWidget {
  const _NextButton({
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: isEnabled
          ? () {
              final currentPage =
                  ref.read(cardsListControllerProvider).currentPage;
              _goToPage(context, currentPage + 1);
              ref.read(cardsListControllerProvider.notifier).nextPage();
            }
          : null,
      style: TextButton.styleFrom(),
      // Icons and label are swapped because of the directionality.
      //
      // See
      // https://github.com/flutter/flutter/issues/71941#issuecomment-758282199.
      label: const Icon(Icons.arrow_forward),
      icon: const Text('Next'),
    );
  }
}
