//
//  TarefaUserDefaults.swift
//  Lista de tarefas
//
//  Created by Felipe Treichel on 05/03/18.
//  Copyright © 2018 Felipe Treichel. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    let key = "listaTarefas"
    
    func salvar(tarefa: String) {
        var tarefas = listar()
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
    
    func remover(indice: Int) {
        var tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
    
    func listar() -> [String] {
        if let tarefas = UserDefaults.standard.object(forKey: key) {
            return tarefas as! [String]
        }
        return []
    }
    
}
