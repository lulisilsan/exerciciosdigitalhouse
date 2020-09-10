import UIKit

//Vamos iniciar pela Classe Cachorro

//Declaração de classe


class Mamifero {
    var nome: String
    var tamanho: Double
    var raca: String
    var peso: Double
    var cor: String
    var tipo: String
    var dataNascimento: String
    
    init(nome: String, tamanho: Double, raca: String, peso: Double, cor: String, tipo: String, dataNascimento: String) {
        self.nome = nome
        self.tamanho = tamanho
        self.raca = raca
        self.peso = peso
        self.cor = cor
        self.tipo = tipo
        self.dataNascimento = dataNascimento
    }
    
    func come () {
        print("Fica Feliz")
    }
    
    func brinca () {
        print("Fica cansado")
    }
    
    func dorme () {
        print("ZZZZZZ")
    }
    
}

class Gato: Mamifero {
    var cacaRato: Bool
    init(nome: String, tamanho: Double, raca: String, peso: Double, cor: String, tipo: String, dataNascimento: String, cacaRato: Bool) {
        self.cacaRato = cacaRato
        super.init(nome: nome, tamanho: tamanho, raca: raca, peso: peso, cor: cor, tipo: tipo, dataNascimento: dataNascimento)
    }
    
    func mia() {
        print("MIAU")
    }
    
}

class Cachorro: Mamifero {
    //TEM: Atributos / Propriedades / Caracteristicas

    func late() {
           print("AUAUAUAU")
           
       }
    
    }
    
    // FAZ: Methods, Funcs, Actions
    
   
let sofia = Gato(nome: "Sofia", tamanho: 1.0, raca: "SRN", peso: 4.0, cor: "Frajola", tipo: "Felino", dataNascimento: "03/08/2014", cacaRato: true)
print(sofia.nome)
print(sofia.tamanho)
sofia.brinca()
sofia.come()
 
let tuffo = Cachorro(nome: "Tuffo", tamanho: 3.0, raca: "York", peso: 2.0, cor: "Mesclado", tipo: "Cachorro", dataNascimento: "10/10/2014")

print(tuffo.nome)
print(tuffo.tamanho)
tuffo.come()
tuffo.dorme()










