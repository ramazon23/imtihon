enum Ru {
  salati("Салаты"),
  napitki("Напитки"),
  fastfood("Фаст Фоод"),
  candy("Сладости"),
  natsionalniyProdukt("Национальные продукты");

  final String str;
  const Ru(this.str);
}

class RuLangvich {
  const RuLangvich();
  void ruLangvich() {
    for (var e in Ru.values) {
      print(e.str);
    }
  }
}
