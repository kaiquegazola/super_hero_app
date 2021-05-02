import 'package:super_hero_app/feature/hero/data/models/appearance_model.dart';
import 'package:super_hero_app/feature/hero/data/models/biography_model.dart';
import 'package:super_hero_app/feature/hero/data/models/connection_model.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';
import 'package:super_hero_app/feature/hero/data/models/images_model.dart';
import 'package:super_hero_app/feature/hero/data/models/powerstats_model.dart';
import 'package:super_hero_app/feature/hero/data/models/work_model.dart';

Map<String, dynamic> aBombFullMap = <String, dynamic>{
  'id': 1,
  'name': 'A-Bomb',
  'slug': '1-a-bomb',
  'powerstats': {
    'intelligence': 38,
    'strength': 100,
    'speed': 17,
    'durability': 80,
    'power': 24,
    'combat': 64
  },
  'appearance': {
    'gender': 'Male',
    'race': 'Human',
    'height': ['6\'8', '203 cm'],
    'weight': ['980 lb', '441 kg'],
    'eyeColor': 'Yellow',
    'hairColor': 'No Hair'
  },
  'biography': {
    'fullName': 'Richard Milhouse Jones',
    'alterEgos': 'No alter egos found.',
    'aliases': ['Rick Jones'],
    'placeOfBirth': 'Scarsdale, Arizona',
    'firstAppearance': 'Hulk Vol 2 #2 (April, 2008) (as A-Bomb)',
    'publisher': 'Marvel Comics',
    'alignment': 'good'
  },
  'work': {
    'occupation': 'Musician, adventurer, author; formerly talk show host',
    'base': '-'
  },
  'connections': {
    'groupAffiliation':
        'Hulk Family; Excelsior (sponsor), Avengers (honorary member); formerly partner of the Hulk, Captain America and Captain Marvel; Teen Brigade; ally of Rom',
    'relatives':
        'Marlo Chandler-Jones (wife); Polly (aunt); Mrs. Chandler (mother-in-law); Keith Chandler, Ray Chandler, three unidentified others (brothers-in-law); unidentified father (deceased); Jackie Shorr (alleged mother; unconfirmed)'
  },
  'images': {
    'xs':
        'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/1-a-bomb.jpg',
    'sm':
        'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/sm/1-a-bomb.jpg',
    'md':
        'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/md/1-a-bomb.jpg',
    'lg':
        'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/1-a-bomb.jpg'
  }
};

HeroModel aBombFullModel = HeroModel(
  id: 1,
  name: 'A-Bomb',
  slug: '1-a-bomb',
  powerstats: PowerstatsModel(
    intelligence: 38,
    strength: 100,
    speed: 17,
    durability: 80,
    power: 24,
    combat: 64,
  ),
  appearance: AppearanceModel(
    gender: 'Male',
    race: 'Human',
    height: const ['6\'8', '203 cm'],
    weight: const ['980 lb', '441 kg'],
    eyeColor: 'Yellow',
    hairColor: 'No Hair',
  ),
  biography: BiographyModel(
    fullName: 'Richard Milhouse Jones',
    alterEgos: 'No alter egos found.',
    aliases: const ['Rick Jones'],
    placeOfBirth: 'Scarsdale, Arizona',
    firstAppearance: 'Hulk Vol 2 #2 (April, 2008) (as A-Bomb)',
    publisher: 'Marvel Comics',
    alignment: 'good',
  ),
  work: WorkModel(
    occupation: 'Musician, adventurer, author; formerly talk show host',
    base: '-',
  ),
  connections: ConnectionModel(
    groupAffiliation:
        'Hulk Family; Excelsior (sponsor), Avengers (honorary member); formerly partner of the Hulk, Captain America and Captain Marvel; Teen Brigade; ally of Rom',
    relatives:
        'Marlo Chandler-Jones (wife); Polly (aunt); Mrs. Chandler (mother-in-law); Keith Chandler, Ray Chandler, three unidentified others (brothers-in-law); unidentified father (deceased); Jackie Shorr (alleged mother; unconfirmed)',
  ),
  images: ImagesModel(
    xs: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/1-a-bomb.jpg',
    sm: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/sm/1-a-bomb.jpg',
    md: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/md/1-a-bomb.jpg',
    lg: 'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/1-a-bomb.jpg',
  ),
);
