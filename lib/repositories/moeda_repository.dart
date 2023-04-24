import '../models/moeda.dart';

class MoedaRepository{
    static List<Moeda> tabela = [
        Moeda(nome: 'Bitcoin', sigla: 'BTC', preco:10000.00),
        Moeda(nome: 'Flavio', sigla: 'FLA', preco:6000.00),
        Moeda(nome: 'Wesley', sigla: 'WES', preco:4230.00),
        Moeda(nome: 'Lucas', sigla: 'LUC', preco:1234.00),
        Moeda(nome: 'Caue', sigla: 'CAU', preco:5234.00),
    ];
}