// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(prixDeReference)
final prixDeReferenceProvider = PrixDeReferenceProvider._();

final class PrixDeReferenceProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  PrixDeReferenceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prixDeReferenceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prixDeReferenceHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return prixDeReference(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$prixDeReferenceHash() => r'b4f3163b7a0528c1f2416ea8cf07496168af0afa';
