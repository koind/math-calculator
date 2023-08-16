enum LexemeType {
  leftBracket,
  rightBracket,
  opPlus,
  opMinus,
  opMultiply,
  opDivide,
  number,
  eof;
}

class Lexeme {
  late LexemeType type;
  late String value;

  Lexeme(this.type, this.value);

  @override
  String toString() {
    return 'Lexeme{type: $type, value: $value}';
  }
}

class LexemeBuffer {
  int pos = 0;
  List<Lexeme> lexemes;

  LexemeBuffer(this.lexemes);

  Lexeme next() {
    return lexemes[pos++];
  }

  void back() {
    pos--;
  }

  int getPos() {
    return pos;
  }
}
