enum En {
  salad("Salads"),
  drinks("Drinks"),
  fastfood("Fast Food"),
  candy("Candy"),
  nationalfood("National Food");

  final String str;
  const En(this.str);
}

class EnLanguage {
  const EnLanguage();
  void engLanguage() {
    for (var e in En.values) {
      print(e.str);
    }
  }
}
