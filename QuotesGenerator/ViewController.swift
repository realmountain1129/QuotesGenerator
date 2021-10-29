//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by Jinsan_Kim on 2021/10/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "가지고 있는 어떤 재주든 사용하라. 노래를 가장 잘하는 새들만 지저귀면 숲은 너무도 적막할 것이다.", name: "Henry Van Dyke"),
        Quote(contents: "나는 생각한다 고로 나는 존재한다", name: "René Descartes"),
        Quote(contents: "돈이 전부는 아니지만 그만한 게 없다", name: "Floyd Mayweather Jr."),
        Quote(contents: "강한 자가 이기는 것이 아니라, 이긴 자가 강한 것이다.", name: "Franz Beckenbauer"),
        Quote(contents: "남이 자신을 알아 주지 못함을 걱정하지말고 내가 남을 알지 못함을 걱정하라", name: "논어")
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))      //0 ~ 4 사이의 난수 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

