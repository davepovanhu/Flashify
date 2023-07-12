import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

const double _kGoldenDiffTolerance = 0.005;

/// Wrapper function for golden tests in AnkiGPT.
///
/// Because golden tests are platform & architecture (ARM, x86) dependent, this
/// adds a tolerance to the golden test to account for differences in rendering
/// between platforms and architectures.
///
/// Ensures tests are only run on macOS for consistency, and golden files are
/// stored in a goldens directory that is separate from the code.
Future<void> expectGoldenMatchesWithTolerance(
  dynamic actual,
  String goldenFileKey, {
  String? reason,
  dynamic skip = false, // true or a String
}) {
  final String goldenPath = path.join('goldens', goldenFileKey);
  goldenFileComparator = CocoonFileComparator(
    path.join(
      (goldenFileComparator as LocalFileComparator).basedir.toString(),
      goldenFileKey,
    ),
  );
  return expectLater(
    actual,
    matchesGoldenFile(goldenPath),
    reason: reason,
    skip: skip || !Platform.isMacOS,
  );
}

class CocoonFileComparator extends LocalFileComparator {
  CocoonFileComparator(String testFile) : super(Uri.parse(testFile));

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    final ComparisonResult result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    if (!result.passed && result.diffPercent > _kGoldenDiffTolerance) {
      final String error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }
    if (!result.passed) {
      log('A tolerable difference of ${result.diffPercent * 100}% was found when '
          'comparing $golden.');
    }
    return result.passed || result.diffPercent <= _kGoldenDiffTolerance;
  }
}
