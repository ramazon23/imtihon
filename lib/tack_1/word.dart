import 'exeption.dart';

class Words {
  String _word;

  Words._(this._word);

  factory Words(String word) {
    if (word.isEmpty || !word.toLowerCase().contains(RegExp(r'^[a-z]+$'))) {
      throw CustomException("ERROR INWALID WORDS !!!");
    }
    return Words._(word);
  }

  String reverseVowels() {
    List<String> unliHarf = ['a', 'e', 'i', 'o', 'u'];
    List<String> wordList = _word.split('');
    int left = 0;
    int right = wordList.length - 1;

    while (left < right) {
      if (unliHarf.contains(wordList[left].toLowerCase())) {
        if (unliHarf.contains(wordList[right].toLowerCase())) {
          String temp = wordList[left];
          wordList[left] = wordList[right];
          wordList[right] = temp;
          left++;
          right--;
        } else {
          right--;
        }
      } else {
        left++;
      }
    }

    return wordList.join('');
  }

  @override
  String toString() {
    return 'Word: $_word';
  }

  Words copyWith({String? word}) {
    return Words(word ?? _word);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Words &&
          runtimeType == other.runtimeType &&
          _word == other._word;

  @override
  int get hashCode => _word.hashCode;

  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}
