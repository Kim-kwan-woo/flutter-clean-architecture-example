// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postsHash() => r'd87969c52f96cbf9c0d373ca47e6338d4d2366ce';

/// See also [posts].
@ProviderFor(posts)
final postsProvider = AutoDisposeFutureProvider<List<PostEntity>>.internal(
  posts,
  name: r'postsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostsRef = AutoDisposeFutureProviderRef<List<PostEntity>>;
String _$storiesHash() => r'ea6271afabd5cb2bb6dbbbe41ef27e566c505356';

/// See also [stories].
@ProviderFor(stories)
final storiesProvider = AutoDisposeFutureProvider<List<StoryEntity>>.internal(
  stories,
  name: r'storiesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StoriesRef = AutoDisposeFutureProviderRef<List<StoryEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
