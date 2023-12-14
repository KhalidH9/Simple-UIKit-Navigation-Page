//
//  SecondViewController.swift
//  NavigationStudy
//
//  Created by خالد on 29/05/1445 AH.
//

import UIKit

class SecondViewController: UIViewController {
    
    let places = ["البوليفارد", "الدرعية", "واجهة الرياض", "منتزه الملك عبدالله"]
    var currentIndex = 0
    var timer: Timer?
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.textColor = .black
        textView.textAlignment = .center
        textView.font = UIFont.systemFont(ofSize: 20.0)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemCyan
        
        view.addSubview(textView)
        
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        startDisplayingCities()
    }
    
    func startDisplayingCities() {
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(displayNextCity), userInfo: nil, repeats: true)
    }
    
    @objc func displayNextCity() {
        textView.text = places[currentIndex]
        currentIndex = (currentIndex + 1) % places.count
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer?.invalidate()
        timer = nil
    }
}
