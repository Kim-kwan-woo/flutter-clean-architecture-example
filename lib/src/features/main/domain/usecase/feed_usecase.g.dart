// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPostsHash() => r'e0859bb60c534260f286caf22e82e3f9c3cea7c1';

/// See also [fetchPosts].
@ProviderFor(fetchPosts)
final fetchPostsProvider = AutoDisposeFutureProvider<List<PostEntity>>.internal(
  fetchPosts,
  name: r'fetchPostsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchPostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPostsRef = AutoDisposeFutureProviderRef<List<PostEntity>>;
String _$fetchStoriesHash() => r'9c259b22977fac16e49989b48baa01a1ef5d4786';

/// See also [fetchStories].
@ProviderFor(fetchStories)
final fetchStoriesProvider =
    AutoDisposeFutureProvider<List<StoryEntity>>.internal(
  fetchStories,
  name: r'fetchStoriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchStoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchStoriesRef = AutoDisposeFutureProviderRef<List<StoryEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
