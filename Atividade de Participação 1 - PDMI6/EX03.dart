class Animal{
  int id;
  String nome;
  String cor;

  Animal(this.id, this.nome, this.cor);
  
  void mostrarDetalhes() {
    print("ID: $id, Nome: $nome, Cor: $cor");
  }
}

class Cat extends Animal{
  
  String som;
  
  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);
  
  void mostrarDetalhes() {
    print("ID: $id, Nome: $nome, Cor: $cor, Som: $som");
  }
}


void main() {
  
  Cat gato = Cat(1, "Nico", "Cinza", "MEEEEEAAAAAAAWWWWW");
  
  gato.mostrarDetalhes();

}