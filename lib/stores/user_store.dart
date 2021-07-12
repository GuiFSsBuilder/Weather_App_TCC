import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  @observable
  Coordinates? userCoordinates;

  @action
  Future<void> fetchUserCoordinates() async {
    final locationData = await Geolocator.getCurrentPosition();
    userCoordinates = Coordinates(
      lat: locationData.latitude.toString(),
      lng: locationData.longitude.toString(),
    );
  }
}
