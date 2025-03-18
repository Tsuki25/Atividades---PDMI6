class Laptop {
  int id;
  String nome;
  int ram;

  // Construtor
  Laptop(this.id, this.nome, this.ram);

  // Método para exibir os detalhes do laptop
  void mostrarDetalhes() {
    print("ID: $id, Nome: $nome, RAM: ${ram}GB");
  }
}

void main() {
  // Criando três objetos da classe Laptop
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 8);
  Laptop laptop2 = Laptop(2, "MacBook Pro", 16);
  Laptop laptop3 = Laptop(3, "Lenovo ThinkPad", 32);

  // Exibindo os detalhes de cada laptop
  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}