//
//  ViewController.swift
//  Exercicio_2
//
//  Created by Luciana on 18/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    var numberOfScreen: Double = 0 // criei a variavel para armazenar o numero da tela
    var previousNumber: Double = 0 // criei a variavel para armazenar o numero anterior (antes do click da operação matematica)
    var performingMath: Bool = false //controlar quando é digitado algum operador matematico
    
    @IBAction func numbers(_ sender: UIButton) {
        labelResult.text = labelResult.text! + String(sender.tag-1) //pega o numero do botão clicado e joga na label
        numberOfScreen = Double(labelResult.text!)! // atribuindo a variavel numerotela o que esta na label
    }
    
    //Tenho que fazer uma validação do primeiro numero digitado se ele é novo ou se assumirá o valor do resultado anterior
    //Tenho que validar o segundo numero, que poder ser um optional, se for nil deve retornar o primeiro numero como resultado
    //Tenho que validar se o primeiro e o segundo numero foram informados e fazer a operaçao matematica deles
    
    
    
    @IBAction func operators(_ sender: UIButton) {
        if labelResult.text != nil && sender.tag != 11 && sender.tag != 16 { //verifico se a label nao esta vazia,e igual a AC e =
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

