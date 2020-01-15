//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by user161182 on 1/14/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

struct Constants {
    // QUando definimos atributos estaticos, estamos definindo atributos da classe, ou do struct. Logo, voce nao precisa instanciar o struct pra poder acessa-los.
    static let appName = "⚡️FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }

}
