// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardController on DashboardControllerBase, Store {
  Computed<HeroEntity?>? _$currentHeroComputed;

  @override
  HeroEntity? get currentHero =>
      (_$currentHeroComputed ??= Computed<HeroEntity?>(() => super.currentHero,
              name: 'DashboardControllerBase.currentHero'))
          .value;

  final _$heroesAtom = Atom(name: 'DashboardControllerBase.heroes');

  @override
  ObservableList<HeroEntity>? get heroes {
    _$heroesAtom.reportRead();
    return super.heroes;
  }

  @override
  set heroes(ObservableList<HeroEntity>? value) {
    _$heroesAtom.reportWrite(value, super.heroes, () {
      super.heroes = value;
    });
  }

  final _$currentIndexAtom = Atom(name: 'DashboardControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$currentPageAtom = Atom(name: 'DashboardControllerBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$filterAtom = Atom(name: 'DashboardControllerBase.filter');

  @override
  DashboardHeroFilterEntity get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(DashboardHeroFilterEntity value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$initDashboardAsyncAction =
      AsyncAction('DashboardControllerBase.initDashboard');

  @override
  Future<void> initDashboard() {
    return _$initDashboardAsyncAction.run(() => super.initDashboard());
  }

  final _$shuffleAsyncAction = AsyncAction('DashboardControllerBase.shuffle');

  @override
  Future<void> shuffle() {
    return _$shuffleAsyncAction.run(() => super.shuffle());
  }

  final _$applyFiltersAsyncAction =
      AsyncAction('DashboardControllerBase.applyFilters');

  @override
  Future<void> applyFilters(BuildContext context) {
    return _$applyFiltersAsyncAction.run(() => super.applyFilters(context));
  }

  @override
  String toString() {
    return '''
heroes: ${heroes},
currentIndex: ${currentIndex},
currentPage: ${currentPage},
filter: ${filter},
currentHero: ${currentHero}
    ''';
  }
}
