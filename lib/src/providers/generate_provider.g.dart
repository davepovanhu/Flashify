// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hasPickedFileHash() => r'75fba6d5253680aba830ce471b70fc9adbe24545';

/// See also [hasPickedFile].
@ProviderFor(hasPickedFile)
final hasPickedFileProvider = AutoDisposeProvider<bool>.internal(
  hasPickedFile,
  name: r'hasPickedFileProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$hasPickedFileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HasPickedFileRef = AutoDisposeProviderRef<bool>;
String _$generateNotifierHash() => r'64714bbac4811c50bc3f1d4bb98432c3c0082340';

/// See also [GenerateNotifier].
@ProviderFor(GenerateNotifier)
final generateNotifierProvider =
    NotifierProvider<GenerateNotifier, GenerateState>.internal(
  GenerateNotifier.new,
  name: r'generateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$generateNotifierHash,
  dependencies: <ProviderOrFamily>[hasPlusProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    hasPlusProvider,
    ...?hasPlusProvider.allTransitiveDependencies
  },
);

typedef _$GenerateNotifier = Notifier<GenerateState>;
String _$pickedFileHash() => r'45c4fe2ce2a186fbae92a34b26b601c8de4f6d6a';

/// See also [PickedFile].
@ProviderFor(PickedFile)
final pickedFileProvider =
    AutoDisposeNotifierProvider<PickedFile, PlatformFile?>.internal(
  PickedFile.new,
  name: r'pickedFileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pickedFileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PickedFile = AutoDisposeNotifier<PlatformFile?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
