import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';
import '../../domain/domain.dart';
import 'providers.dart';

part 'rental_house_providers.g.dart';

enum FilterRHType { all, isActive, notActive }

@Riverpod(keepAlive: true)
class RentalHouseCurrentFilter extends _$RentalHouseCurrentFilter {
  @override
  FilterRHType build() => FilterRHType.all;

  void setCurrentFilter(FilterRHType newFilter) {
    state = newFilter;
  }
}

@Riverpod(keepAlive: true)
Future<List<RentalHouseModel>> rentalHouse(
  RentalHouseRef ref,
  /**token y userId */
) async {
  final String userId = ref.watch(userIdProvider);
  final String token = ref.watch(tokenProvider);
  try {
    final List<RentalHouseModel> rentalHouseList =
        await RentalHouseList().getByUserId(userId, token);

    return rentalHouseList;
  } on Exception catch (e) {
    return Future.error(e.toString());
  }
}


///  filteredTodos // SOLO LECTURA
@riverpod
List<RentalHouseModel> filteredRentalHouses(FilteredRentalHousesRef ref) {
  final currentFilter = ref.watch(rentalHouseCurrentFilterProvider);
  final rentalHouses = ref.watch(rentalHouseProvider);
  List<RentalHouseModel> listRentalHouse = [];

  rentalHouses.whenData((value) => listRentalHouse = value );

  switch (currentFilter) {
    case FilterRHType.all:
      return listRentalHouse;

    case FilterRHType.isActive:
      return listRentalHouse.where((rentalHouse) => rentalHouse.isActive).toList();

    case FilterRHType.notActive:
      return listRentalHouse
          .where((rentalHouse) => !rentalHouse.isActive)
          .toList();
  }
}
