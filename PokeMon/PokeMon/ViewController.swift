//
//  ViewController.swift
//  PokeMon
//
//  Created by Boe Bogdin on 9/21/22.
//

import UIKit
import RyansPokemonPackage

class ViewController: UIViewController {

    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var PokemonNameLabel: UILabel!
    @IBOutlet weak var typesStackView: UIStackView!
    @IBOutlet weak var newPokemonButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newPokemonButton.layer.cornerRadius = newPokemonButton.frame.height / 2
    }

    @IBAction func newpokemonButtonTapped(_ sender: UIButton) {
        // get a new pokemon
        // assign the name to the name label
        // assign the photo to the imageview
        Task {
            let pokemon = await getRandomPokemon(gen: .original)
            PokemonNameLabel.text = pokemon.name
            pokemonImageView.setPokemon(pokemon: pokemon)
            
            // create a label for each type that the pokemon has.
            // add those labels to the stackview
            for view in typesStackView.arrangedSubviews {
                view.removeFromSuperview()
            }
            for pType in pokemon.types {
                let label = UILabel()
                label.text = pType.capitalized
                label.textColor = .blue
                label.textAlignment = .center
                typesStackView.addArrangedSubview(label)
            }
        }
    }
    
}

