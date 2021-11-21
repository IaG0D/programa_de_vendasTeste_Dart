import 'cliente.dart';
import 'venda.dart';
import 'produto.dart';
import 'venda_item.dart';

main(){
  var venda = new Venda(
    cliente: Cliente(
      cpf: '151.168.586.77', 
      nome: 'Iago'
      ),

      itens:<VendaItem> [
        VendaItem(
          quantidade: 3,
          produto: Produto(
            codigo: 2555,
            nome: 'Coca',
            preco: 6.75,
            desconto: 0.10
          )

        ),
        VendaItem(
          quantidade: 9,
          produto: Produto(
            codigo: 2451,
            nome: 'Batata',
            preco: 1.90,
            desconto: 0.05
          )

        ),
        VendaItem(
          quantidade: 10,
          produto: Produto(
            codigo: 2341,
            nome: 'Maçã',
            preco: 1.75,
            desconto: 0.0
          )

        )
      ]
  );
    
    venda.recibo();
  
}