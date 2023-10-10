// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_house_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rentalHouseHash() => r'c123d00606390814ead7367878389a1cb31d20f6';

/// See also [rentalHouse].
@ProviderFor(rentalHouse)
final rentalHouseProvider = FutureProvider<List<RentalHouseModel>>.internal(
  rentalHouse,
  name: r'rentalHouseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rentalHouseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RentalHouseRef = FutureProviderRef<List<RentalHouseModel>>;
String _$filteredRentalHousesHash() =>
    r'122e1c96e5be2cdeafac03ec42d5fff84d4ee885';

///  filteredTodos // SOLO LECTURA
///
/// Copied from [filteredRentalHouses].
@ProviderFor(filteredRentalHouses)
final filteredRentalHousesProvider =
    AutoDisposeProvider<List<RentalHouseModel>>.internal(
  filteredRentalHouses,
  name: r'filteredRentalHousesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredRentalHousesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredRentalHousesRef
    = AutoDisposeProviderRef<List<RentalHouseModel>>;
String _$rentalHouseCurrentFilterHash() =>
    r'afcc07d65fc25f35af3d37b3e60ec9fa383673ca';

/// See also [RentalHouseCurrentFilter].
@ProviderFor(RentalHouseCurrentFilter)
final rentalHouseCurrentFilterProvider =
    NotifierProvider<RentalHouseCurrentFilter, FilterRHType>.internal(
  RentalHouseCurrentFilter.new,
  name: r'rentalHouseCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rentalHouseCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RentalHouseCurrentFilter = Notifier<FilterRHType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
