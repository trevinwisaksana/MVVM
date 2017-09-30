//
//  CardsViewController.swift
//  Card
//
//  Created by Trevin Wisaksana on 8/28/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

final class CardsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var viewModel: CardsViewModel!
    @IBOutlet weak var cardsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* ======= Optional ======== */
        cardsCollectionView.alwaysBounceVertical = true
    }
    
    @IBAction func createCardButtonAction(_ sender: Any) {
        presentCreateCardViewController()
    }
    
    /* ============= Private Methods ============ */
    
    private func presentCreateCardViewController() {
        let createCardViewController = storyboard?.instantiateViewController(withIdentifier: "CreateCardViewController") as! CreateCardViewController
        present(createCardViewController, animated: true, completion: nil)
    }
    
    /* ============= Collection View ============ */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: Return the number of elements inside the listOfCards array
        // return ...
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
        
        // TODO: Access the list of cards in the view model
        // let cardData = ...
        cell.configure(cardData)
        
        return cell
    }
    
    /* ============= Miscellaneous ============= */
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
