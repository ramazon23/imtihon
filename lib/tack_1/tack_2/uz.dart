enum Uz {
  saladlar("Saladlar"),
  ichimliklar("Ichimliklar"),
  fastfood("Fast Food"),
  shirinliklar("Shirinliklar"),
  milliyTaomlar("Milliy taomlar!");

  final String str;
  const Uz(this.str);
}

class UzbekTili {
  const UzbekTili();
  void uzbekTili() {
    for (var e in Uz.values) {
      print(e.str);
    }
  }
}
