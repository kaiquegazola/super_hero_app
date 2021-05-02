import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_hero_app/core/http/http.dart';
import 'package:super_hero_app/core/http/http_dio.dart';
import 'package:super_hero_app/feature/hero/data/datasources/hero_remote_datasource.dart';

import '../abomb_hero_json.dart';

class MockHttpDio extends Mock implements HttpDio {}

void main() {
  final httpMock = MockHttpDio();
  final heroRemoteDataSource = HeroRemoteDataSourceImpl(
    http: httpMock,
  );

  group('get hero by id', () {
    test('Should return Map when valid response has get', () async {
      when(
            () => httpMock.get(
          any(),
        ),
      ).thenAnswer(
            (_) async => HttpResponse(
          statusCode: 200,
          body: aBombFullMap,
        ),
      );

      final result = await heroRemoteDataSource.getHero(1);
      expect(result, isA<Map<String, dynamic>>());
    });

    test('Should return Null when invalid response has get', () async {
      when(
            () => httpMock.get(
          any(),
        ),
      ).thenAnswer(
            (_) async => HttpResponse(
          statusCode: 400,
          body: null,
        ),
      );

      final result = await heroRemoteDataSource.getHero(1);
      expect(result, null);
    });
  });

  group('get hero by name', () {
    test('Should return Map when valid response has get', () async {
      when(
        () => httpMock.get(
          any(),
        ),
      ).thenAnswer(
        (_) async => HttpResponse(
          statusCode: 200,
          body: heroSearchResultMap,
        ),
      );

      final result = await heroRemoteDataSource.getHeroByName('iron');
      expect(result, isA<List<Map<String, dynamic>>>());
    });

    test('Should return Null when invalid response has get', () async {
      when(
            () => httpMock.get(
          any(),
        ),
      ).thenAnswer(
            (_) async => HttpResponse(
          statusCode: 400,
          body: null,
        ),
      );

      final result = await heroRemoteDataSource.getHeroByName('iron');
      expect(result, null);
    });
  });
}
