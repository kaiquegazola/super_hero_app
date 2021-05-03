import 'dart:math';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

part 'dashboard_controller.g.dart';

class DashboardController = DashboardControllerBase with _$DashboardController;

abstract class DashboardControllerBase with Store {
  DashboardControllerBase({
    required this.getHeroById,
    required this.getHeroByName,
    required this.getAllHeroes,
  }) {
    initDashboard();
  }

  final UseCase<HeroEntity, int> getHeroById;
  final UseCase<List<HeroEntity>, String> getHeroByName;
  final UseCase<List<HeroEntity>, Null> getAllHeroes;
  final CarouselController carouselController = CarouselController();

  @computed
  HeroEntity? get currentHero => heroes?[currentIndex];

  @observable
  ObservableList<HeroEntity>? heroes;

  @observable
  int currentIndex = 0;

  @observable
  int currentPage = 1;

  @action
  Future<void> initDashboard() async {
    if(heroes == null){
      final result = await getAllHeroes(null);
      await result.fold((l) => null, (heroList) async {
        await preCacheImages(heroList.sublist(0, 5));
        heroes = ObservableList.of(heroList);
      });
    }
  }


  @action
  Future<void> shuffle() async {
    final randomId = Random().nextInt(731) + 1;
    final index = heroes!.indexWhere((hero) => hero.id == randomId);
    if (index >= 0) {
      carouselController.animateToPage(index);
    } else {
      shuffle();
    }
  }

  Future<void> preCacheImages(List<HeroEntity> heroes) async {
    for (var hero in heroes) {
      await DefaultCacheManager().getSingleFile(hero.images!.lg!);
    }
  }
}
