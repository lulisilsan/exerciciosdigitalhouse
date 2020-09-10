import UIKit

class Veiculo {
    var cor: String
    var preco: Double
    var quantidadePassageiros: Float
    
    init(cor: String, preco: Double, quantidadePassageiros: Float) {
        self.cor = cor
        self.preco = preco
        self.quantidadePassageiros = quantidadePassageiros
    }
    func calcularCombustivel(km: Float) -> Float {
        return quantidadePassageiros
    }
    
}

class Carro: Veiculo {
    var tamanhoRoda: Int
    init(cor: String, preco: Double, quantidadePassageiros: Float, tamanhoRoda: Int) {
        self.tamanhoRoda = tamanhoRoda
        super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
    }
    override func calcularCombustivel(km: Float) -> Float {
        return super.calcularCombustivel(km: km) * Float(tamanhoRoda) * km
    }
    
}

class Aviao: Veiculo {
    var piloto: String
    var companhia: String
    
    init(cor: String, preco: Double, quantidadePassageiros: Float, piloto: String, companhia: String) {
        self.piloto = piloto
        self.companhia = companhia
        super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
    }
    override func calcularCombustivel(km: Float) -> Float {
        return super.calcularCombustivel(km: km) * km
    }
}

let celta = Carro(cor: "Azul", preco: 1.000, quantidadePassageiros: 2.0, tamanhoRoda: 15)
print(celta.cor)
print(celta.tamanhoRoda)
print(celta.calcularCombustivel(km: 2.5))





