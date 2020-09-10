import UIKit

class Funcionario {
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome:String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    func calculaSalarioAnual() -> Float {
        return salario * 12
    }
}


class Programador: Funcionario{
    var plataforma: String
    init(nome: String, salario: Float, cpf: String, plataforma: String) {
        self.plataforma = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculaSalarioAnual() -> Float {
        return super.calculaSalarioAnual() * 1.20
    }

}
                

class Designer: Funcionario {
    var ferramentaPreferida: String
    init (nome: String, salario: Float, cpf: String, ferramentaPreferida: String){
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculaSalarioAnual() -> Float {
        return super.calculaSalarioAnual() * 1.15
    }

}


let jose = Programador(nome: "José", salario: 1.000, cpf: "111111-333", plataforma: "IOS")
print(jose.nome)
print(jose.salario)
print(jose.calculaSalarioAnual())





