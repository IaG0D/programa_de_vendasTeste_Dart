import 'cliente.dart';
import 'venda_item.dart';

class Venda{
  Cliente? cliente;
  List<VendaItem>? itens;

  Venda({this.cliente, this.itens = const []});

  double? get valorTotal {
    return itens!
    .map((item) => item.precoGet! * item.quantidade!)
    .reduce((t, a) => t +a);
  }

  void recibo(){
    for(VendaItem lista in this.itens!){
      String nota1 = "----------------------------------\n*Nome: ${lista.produto!.nome} \n*Preço: ${lista.produto!.preco} \nQtd: ${lista.quantidade}";
      print(nota1);
     
    }
    String nota2 = "----------------------------------\n*Cliente: ${cliente!.nome} \n*CPF: ${cliente!.cpf}";
    String nota3 = "\nValor a pagar: ${this.valorTotal}";
    print(nota2 + nota3);
;
  }
} 