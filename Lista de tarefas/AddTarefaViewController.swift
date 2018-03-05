//
//  AddTarefaViewController.swift
//  Lista de tarefas
//
//  Created by Felipe Treichel on 05/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class AddTarefaViewController: UIViewController {
    
    @IBOutlet weak var tarefaInput: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if let textoDigitado = tarefaInput.text {
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
        }
    }
    
    
}
