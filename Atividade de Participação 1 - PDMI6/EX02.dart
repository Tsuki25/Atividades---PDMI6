class Laptop{
  int id;
  String nome;
  double preco;

  Laptop(this.id, this.nome, this.preco);

}

void main() {
  // Criando três objetos da classe Laptop
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 2200.0);
  Laptop laptop2 = Laptop(2, "MacBook Pro", 4500.0);
  Laptop laptop3 = Laptop(3, "Lenovo ThinkPad", 1700.0);
  
  List listaLaptops = [laptop1, laptop2, laptop3];
  
  listaLaptops.forEach((laptop) => print("ID: ${laptop.id}, Nome: ${laptop.nome}, Preço: ${laptop.preco} reais"));

}