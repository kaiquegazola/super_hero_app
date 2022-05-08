import 'dart:math';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:super_hero_app/core/usecases/usecase.dart';
import 'package:super_hero_app/feature/dashboard/domain/entities/dashboard_hero_filter_entity.dart';
import 'package:super_hero_app/feature/hero/domain/entities/hero_entity.dart';

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

  @observable
  DashboardHeroFilterEntity filter = DashboardHeroFilterEntity();

  @action
  Future<void> initDashboard() async {
    if (heroes == null) {
      final result = await getAllHeroes(null);
      await result.fold((l) => null, (heroList) async {
        await preCacheImages(heroList.sublist(0, 5));
        heroes = ObservableList.of(heroList);
      });
    }
  }

  @action
  Future<void> shuffle() async {
    heroes = null;
    final result = await getAllHeroes(null);
    await result.fold((l) => null, (allHeroes) async {
      heroes = ObservableList.of(allHeroes);
      final randomIndex = Random().nextInt(allHeroes.length) + 1;
      await preCacheImages([heroes![randomIndex]]);
      carouselController.animateToPage(randomIndex);
    });
  }

  @action
  Future<void> applyFilters(BuildContext context) async {
    heroes = null;
    final result = await getAllHeroes(null);
    result.fold((l) => null, (allHeroes) {
      List<HeroEntity> _filtered = allHeroes;
      if (filter.name != null && filter.name!.isNotEmpty) {
        _filtered = _filtered
            .where(
              (element) => element.name!.toLowerCase().contains(
                    filter.name!.toLowerCase(),
                  ),
            )
            .toList();
      }
      if (filter.gender != null && filter.gender!.isNotEmpty) {
        _filtered = _filtered.where(
          (element) {
            return element.appearance!.gender!.toLowerCase() == filter.gender!;
          },
        ).toList();
      }
      if (_filtered.isEmpty) {
        heroes = ObservableList.of(allHeroes);
        filter = DashboardHeroFilterEntity();
      } else {
        heroes = ObservableList.of(_filtered);
        currentIndex = 0;
        carouselController.jumpToPage(0);
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '${_filtered.length} results found with this filter(s).',
            textAlign: TextAlign.center,
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          duration: Duration(seconds: 2),
        ),
      );
    });
  }

  Future<void> preCacheImages(List<HeroEntity> heroes) async {
    for (var hero in heroes) {
      await DefaultCacheManager().getSingleFile(hero.images!.lg!);
    }
  }

  void goToDetails(HeroEntity hero) {
    Modular.to.pushNamed('/hero', arguments: hero);
  }
}
