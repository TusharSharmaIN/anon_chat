import 'dart:math';

class IdentityNamePool {
  static const List<String> adjectives = [
    'Brave',
    'Calm',
    'Silent',
    'Curious',
    'Gentle',
    'Bold',
    'Swift',
    'Lucky',
    'Quiet',
    'Mellow',
    'Bright',
    'Clever',
    'Cozy',
    'Daring',
    'Dreamy',
    'Fierce',
    'Happy',
    'Jolly',
    'Kind',
    'Lively',
    'Mystic',
    'Nimble',
    'Playful',
    'Quirky',
    'Radiant',
    'Rapid',
    'Serene',
    'Sharp',
    'Shy',
    'Sly',
    'Soft',
    'Solar',
    'Stellar',
    'Sunny',
    'Tender',
    'Vivid',
    'Witty',
    'Zen',
  ];

  static const List<String> animals = [
    'Badger',
    'Fox',
    'Tiger',
    'Sparrow',
    'Panda',
    'Otter',
    'Wolf',
    'Falcon',
    'Hawk',
    'Whale',
    'Eagle',
    'Raven',
    'Lion',
    'Leopard',
    'Cheetah',
    'Jaguar',
    'Panther',
    'Lynx',
    'Owl',
    'Robin',
    'Dolphin',
    'Seal',
    'Walrus',
    'Penguin',
    'Koala',
    'Kangaroo',
    'Moose',
    'Bison',
    'Horse',
    'Stallion',
    'Viper',
    'Cobra',
    'Mamba',
    'Crane',
    'Stork',
    'Heron',
    'Phoenix',
    'Drake',
    'Mantis',
  ];

  static final Random _random = Random();

  static String generate(Set<String> takenNames, {int maxAttempts = 50}) {
    String candidate = '';

    for (var i = 0; i < maxAttempts; i++) {
      final adj = adjectives[_random.nextInt(adjectives.length)];
      final animal = animals[_random.nextInt(animals.length)];
      candidate = '$adj$animal';
      if (!takenNames.contains(candidate)) {
        return candidate;
      }
    }

    if (candidate.isNotEmpty) {
      return candidate;
    }

    return '${adjectives.first}${animals.first}';
  }
}
