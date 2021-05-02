import 'package:mobx/mobx.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/images_entity.dart';

part 'dashboard_controller.g.dart';

class DashboardController = DashboardControllerBase with _$DashboardController;

abstract class DashboardControllerBase with Store {
  DashboardControllerBase() {
    Future<void>.delayed(
      Duration(
        seconds: 4,
      ),
    ).then((_) {
      heroes = ObservableList.of([
        HeroEntity(
          name: 'test',
          images: ImagesEntity(
            lg: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/1-a-bomb.jpg',
          ),
        ),
        HeroEntity(
          name: 'test2',
          images: ImagesEntity(
            lg: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/8-adam-strange.jpg',
          ),
        ),
      ]);
    });
  }

  @computed
  HeroEntity? get currentHero => heroes?[currentIndex];

  @observable
  ObservableList<HeroEntity>? heroes;

  @observable
  int currentIndex = 0;
}
