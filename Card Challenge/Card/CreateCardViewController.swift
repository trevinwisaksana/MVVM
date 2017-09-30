//
//  CreateCardViewController.swift
//  Card
//
//  Created by Trevin Wisaksana on 9/20/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

final class CreateCardViewController: UIViewController {
    
    /* ===== IBOutlets ====== */
    
    @IBOutlet var mainView: CreateCardMainView!
    @IBOutlet var viewModel: CreateCardViewModel!
    
    /* ===== IBActions ====== */
    
    @IBAction func addButtonAction(_ sender: Any) {
        createCard()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /* ====== Miscellaneous ====== */
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    /* ====== Logic ======= */
    
    private func createCard() {
        
        let card = Card()
        
        guard let fullName = mainView.fullNameTextField.text else {
            return
        }
        
        guard let email = mainView.emailAddressTextField.text else {
            return
        }
        
        guard let phoneNumber = mainView.phoneNumberTextField.text else {
            return
        }
        
        guard let occupation = mainView.occupationTextField.text else {
            return
        }
        
        card.name = fullName
        card.email = email
        card.phoneNumber = phoneNumber
        card.occupancy = occupation
        card.companyAddress = mainView.companyAddressTextField.text ?? ""
        card.companyWebsite = mainView.companyWebsiteTextField.text ?? ""
        
        passDataToPresentingViewController(data: card)
    }
    
    private func passDataToPresentingViewController(data: Card) {
        let cardsViewController = presentingViewController as? CardsViewController
        // TODO: Add the data argument to CardsViewModel and reload the collection view
        // ...
        defer {
            dismiss(animated: true, completion: nil)
        }
    }
    
}
