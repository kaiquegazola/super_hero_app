import 'package:mobx/mobx.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';

part 'dashboard_controller.g.dart';

class DashboardController = DashboardControllerBase with _$DashboardController;

abstract class DashboardControllerBase with Store {
  DashboardControllerBase({
    required this.getHeroById,
    required this.getHeroByName,
  }) {
    initDashboard();
  }

  final UseCase<HeroEntity, int> getHeroById;
  final UseCase<List<HeroEntity>, String> getHeroByName;

  @computed
  HeroEntity? get currentHero => heroes?[currentIndex];

  @observable
  ObservableList<HeroEntity>? heroes;

  @observable
  int currentIndex = 0;

  @action
  Future<void> initDashboard() async {
    final List<HeroEntity> _heroes = [];
    for (int i = 1; i < 6; i++) {
      final heroResult = await getHeroById(i);
      heroResult.fold(
        (l) => null,
        (hero) => _heroes.add(hero),
      );
    }
    if (_heroes.isNotEmpty) {
      heroes = ObservableList.of(_heroes);
    }
  }
}
