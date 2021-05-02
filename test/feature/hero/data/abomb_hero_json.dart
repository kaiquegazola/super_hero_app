import 'package:super_hero_app/feature/hero/data/models/appearance_model.dart';
import 'package:super_hero_app/feature/hero/data/models/biography_model.dart';
import 'package:super_hero_app/feature/hero/data/models/connection_model.dart';
import 'package:super_hero_app/feature/hero/data/models/hero_model.dart';
import 'package:super_hero_app/feature/hero/data/models/powerstats_model.dart';
import 'package:super_hero_app/feature/hero/data/models/work_model.dart';

Map<String, dynamic> aBombFullMap = <String, dynamic>{
  'id': '1',
  'name': 'A-Bomb',
  'slug': '1-a-bomb',
  'powerstats': {
    'intelligence': '38',
    'strength': '100',
    'speed': '17',
    'durability': '80',
    'power': '24',
    'combat': '64'
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
  'image': {
    'url':
        'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/1-a-bomb.jpg'
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
  image:
      'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/1-a-bomb.jpg',
);

final Map<String, dynamic> heroSearchResultMap = <String, dynamic>{
  'response': 'success',
  'results-for': 'iron',
  'results': [
    <String, dynamic>{
      'id': '345',
      'name': 'Iron Fist',
      'powerstats': {
        'intelligence': '75',
        'strength': '55',
        'speed': '33',
        'durability': '50',
        'power': '95',
        'combat': '100'
      },
      'biography': {
        'full-name': 'Danny Rand',
        'alter-egos': 'No alter egos found.',
        'aliases': [
          'Daredevil',
          'Daniel Thomas Rand',
          'the Living Weapon',
          'Young Dragon',
          'Danny Rand'
        ],
        'place-of-birth': '-',
        'first-appearance': 'Marvel Premiere #15 (May 1974)',
        'publisher': 'Marvel Comics',
        'alignment': 'good'
      },
      'appearance': {
        'gender': 'Male',
        'race': 'Human',
        'height': ['5\'11', '180 cm'],
        'weight': ['175 lb', '79 kg'],
        'eye-color': 'Blue',
        'hair-color': 'Blond'
      },
      'work': {
        'occupation':
        'Adventurer; formerly co-owner of Rand-Meachum, Inc., bodyguard, private investigator, research assistant, warrior',
        'base': 'New York'
      },
      'connections': <String, dynamic>{
        'group-affiliation':
        'New Avengers, Heroes for Hire, Inc., Secret Defenders, Defenders, Misty Knight, Luke Cage',
        'relatives':
        'Wendell Rand-K\'ai (father, deceased), Heather Duncan Rand (mother, deceased), Yu-Ti (adopted uncle), Miranda Rand-K\'ai (half-sister), Lord Tuan (adopted paternal grandfather, deceased), Lady Ming (adopted paternal grandmother, deceased), Thomas Duncan (maternal grandfather)'
      },
      'image': {
        'url':
        'https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/1120.jpg'
      }
    },
    {
      'id': '346',
      'name': 'Iron Man',
      'powerstats': {
        'intelligence': '100',
        'strength': '85',
        'speed': '58',
        'durability': '85',
        'power': '100',
        'combat': '64'
      },
      'biography': {
        'full-name': 'Tony Stark',
        'alter-egos': 'No alter egos found.',
        'aliases': [
          'Iron Knight',
          'Hogan Potts',
          'Spare Parts Man',
          'Cobalt Man II',
          'Crimson Dynamo',
          'Ironman'
        ],
        'place-of-birth': 'Long Island, New York',
        'first-appearance': 'Tales of Suspence #39 (March, 1963)',
        'publisher': 'Marvel Comics',
        'alignment': 'good'
      },
      'appearance': {
        'gender': 'Male',
        'race': 'Human',
        'height': ['6\'6', '198 cm'],
        'weight': ['425 lb', '191 kg'],
        'eye-color': 'Blue',
        'hair-color': 'Black'
      },
      'work': {
        'occupation':
        'Inventor, Industrialist; former United States Secretary of Defense',
        'base': 'Seattle, Washington'
      },
      'connections': {
        'group-affiliation':
        'Avengers, Illuminati, Stark Resilient; formerly S.H.I.E.L.D., leader of Stark Enterprises, the Pro-Registration Superhero Unit, New Avengers, Mighty Avengers, Hellfire Club, Force Works, Avengers West Coast, United States Department of Defense.',
        'relatives':
        'Howard Anthony Stark (father, deceased), Maria Stark (mother, deceased), Morgan Stark (cousin), Isaac Stark (ancestor)'
      },
      'image': {
        'url':
        'https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/85.jpg'
      }
    },
    {
      'id': '347',
      'name': 'Iron Monger',
      'powerstats': {
        'intelligence': '88',
        'strength': '63',
        'speed': '25',
        'durability': '90',
        'power': '57',
        'combat': '56'
      },
      'biography': {
        'full-name': 'Obadiah Stane',
        'alter-egos': 'No alter egos found.',
        'aliases': ['-'],
        'place-of-birth': '-',
        'first-appearance': '-',
        'publisher': 'Marvel Comics',
        'alignment': 'bad'
      },
      'appearance': {
        'gender': 'Male',
        'race': 'null',
        'height': ['-', '0 cm'],
        'weight': ['4230 lb', '2 tons'],
        'eye-color': 'Blue',
        'hair-color': 'No Hair'
      },
      'work': {'occupation': 'CEO Stane International', 'base': '-'},
      'connections': {
        'group-affiliation': 'Stane International',
        'relatives':
        'Zebediah (father, deceased), unnamed mother (deceased), Ezekiel Stane (son)'
      },
      'image': {
        'url':
        'https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/886.jpg'
      }
    },
    {
      'id': '732',
      'name': 'Ironman',
      'powerstats': {
        'intelligence': '100',
        'strength': '85',
        'speed': '58',
        'durability': '85',
        'power': '100',
        'combat': '64'
      },
      'biography': {
        'full-name': 'Tony Stark',
        'alter-egos': 'No alter egos found.',
        'aliases': [
          'Iron Knight',
          'Hogan Potts',
          'Spare Parts Man',
          'Cobalt Man II',
          'Crimson Dynamo',
          'Ironman'
        ],
        'place-of-birth': 'Long Island, New York',
        'first-appearance': 'Tales of Suspence #39 (March, 1963)',
        'publisher': 'Marvel Comics',
        'alignment': 'good'
      },
      'appearance': {
        'gender': 'Male',
        'race': 'Human',
        'height': ['6\'6', '198 cm'],
        'weight': ['425 lb', '191 kg'],
        'eye-color': 'Blue',
        'hair-color': 'Black'
      },
      'work': {
        'occupation':
        'Inventor, Industrialist; former United States Secretary of Defense',
        'base': 'Seattle, Washington'
      },
      'connections': {
        'group-affiliation':
        'Avengers, Illuminati, Stark Resilient; formerly S.H.I.E.L.D., leader of Stark Enterprises, the Pro-Registration Superhero Unit, New Avengers, Mighty Avengers, Hellfire Club, Force Works, Avengers West Coast, United States Department of Defense.',
        'relatives':
        'Howard Anthony Stark (father, deceased), Maria Stark (mother, deceased), Morgan Stark (cousin), Isaac Stark (ancestor)'
      },
      'image': {
        'url':
        'https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/85.jpg'
      },
    },
  ],
};

