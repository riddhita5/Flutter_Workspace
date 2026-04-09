class Tops {
  var a, b;

  void set(x, y) {
    this.a = x;
    this.b = y;
  }

  void add() {
    var z = this.a + this.b;
    print(z);
  }
}

void main()
{
  Tops t1 = Tops();
  Tops t2 = Tops();

  t1.set(1, 2);
  t1.add();

  t2..set(3, 4)..add();
}