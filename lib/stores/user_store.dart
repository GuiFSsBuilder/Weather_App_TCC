import 'package:location/location.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_tcc/utils/entities/entities.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  final Location _location;

  _UserStoreBase(this._location);

  @observable
  late Coordinates userCoordinates;

  @action
  Future<void> fetchUserCoordinates() async {
    final locationData = await _location.getLocation();
    final lat = locationData.latitude;
    final lng = locationData.longitude;
    if (lat == null || lng == null) {
      throw Failure('Não foi possível buscar sua localização');
    }
    userCoordinates = Coordinates(
      lat: locationData.latitude.toString(),
      lng: locationData.longitude.toString(),
    );
  }
}
