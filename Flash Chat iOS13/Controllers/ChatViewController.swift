//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let messages : [Message] = [
        Message(sender: "1@2.com", body: "Hello!"),
        Message(sender: "a@b.com", body: "Heey!"),
        Message(sender: "1@2.com", body: "How's it going?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self // seria usado se quisessemos inserir interacao com as linhas da tabela.
        tableView.dataSource = self
        title = Constants.appName
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
    
}


// Protocolo responsavel por preencher a tabela.
extension ChatViewController: UITableViewDataSource {
    
    // Esse metodo e chamado pelo TableView. Este, espera que o metodo retorne um inteiro indicando quantas linhas devem ser alocadas para preencher a tabela.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    // Esse metodo e chamado pelo TableView. Este, espera que o metodo retorne um TableViewCell para inserir na tabela.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].body
        return cell
    }
}

//// Protocolo responsavel pelas interacoes com a tabela.
//extension ChatViewController: UITableViewDelegate {
//
//    // Esse metodo e chamado sempre que o usuario seleciona uma das linhas da tabela!
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//
//}


