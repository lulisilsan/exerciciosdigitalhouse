import UIKit


public class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta = 0.0 // atributo privado inicializado com zero
    
    init(nome: String, idade: Int, cpf: String) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
    }
    
    func getSaldo() -> Double {
        return saldoEmConta
    }
    //função privada de calculo do saldo
    private func setSaldo(saldoEmConta: Double) {
        self.saldoEmConta = saldoEmConta + self.saldoEmConta
        
    }
    
    
    func vender (quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            if quantidadeDePecas >= 3 {
                setSaldo(saldoEmConta: 350 * Double(quantidadeDePecas))
            } else {
                setSaldo(saldoEmConta: (400 * Double(quantidadeDePecas)))
            }
        } else if tipoDePeca == "Vestido"{
            if quantidadeDePecas >= 5 {
                setSaldo(saldoEmConta: (900 * Double(quantidadeDePecas)) - 250)
            } else {
                setSaldo(saldoEmConta: (900 * Double(quantidadeDePecas)))
             }
          } else if tipoDePeca == "Boné" {
            let valorTotal = quantidadeDePecas * 50 // soma o valor total da compra
            let valorDesconto = Int(quantidadeDePecas / 3) * 50 //desconto: transformei em int para tirar as casas decimais, e aplico 50 reais aos multiplos de 3
            setSaldo(saldoEmConta: Double(valorTotal - valorDesconto)) //obter o valor real da compra com o desconto
        }
    }
}

//Instanciando o objeto para testes:

let vendedor1 = Vendedor(nome: "Joãozinho", idade: 33, cpf: "111-222-333-09")

vendedor1.vender(quantidadeDePecas: 2, tipoDePeca: "Terno") //condição sem desconto
print(vendedor1.getSaldo())

vendedor1.vender(quantidadeDePecas: 10, tipoDePeca: "Terno") // condição com desconto
print(vendedor1.getSaldo())

vendedor1.vender(quantidadeDePecas: 6, tipoDePeca: "Vestido") //condição com desconto
print(vendedor1.getSaldo())

vendedor1.vender(quantidadeDePecas: 2, tipoDePeca: "Vestido") //condição sem desconto
print(vendedor1.getSaldo())

vendedor1.vender(quantidadeDePecas: 2, tipoDePeca: "Boné") //condição sem desconto
print(vendedor1.getSaldo())

vendedor1.vender(quantidadeDePecas: 7, tipoDePeca: "Boné") //condição com desconto
print(vendedor1.getSaldo())



