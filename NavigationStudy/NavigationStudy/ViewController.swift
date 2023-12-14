//
//  ViewController.swift
//  NavigationStudy
//
//  Created by خالد on 29/05/1445 AH.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "وجهات سياحية في ثلاث مدن سعودية"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .center
        return label
    }()

    private let riyadhButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemCyan
        button.setTitle("Riyadh", for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let khobarButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemOrange
        button.setTitle("Khobar", for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()

    private let makkahButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemIndigo
        button.setTitle("Makkah", for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.riyadhButton.addTarget(self, action: #selector(didTapRiyadh), for: .touchUpInside)
        self.khobarButton.addTarget(self, action: #selector(didTapKhobar), for: .touchUpInside)
        self.makkahButton.addTarget(self, action: #selector(didTapMakkah), for: .touchUpInside)

    }


    private func setupUI() {
        self.view.backgroundColor = .white
        
        self.view.addSubview(titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])

        self.view.addSubview(riyadhButton)
        self.riyadhButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            riyadhButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            riyadhButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            riyadhButton.widthAnchor.constraint(equalToConstant: 200),
            riyadhButton.heightAnchor.constraint(equalToConstant: 45),
        ])
        
        self.view.addSubview(khobarButton)
                self.khobarButton.translatesAutoresizingMaskIntoConstraints = false
                
                NSLayoutConstraint.activate([
                    khobarButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                    khobarButton.topAnchor.constraint(equalTo: riyadhButton.bottomAnchor, constant: 20), //heeere
                    khobarButton.widthAnchor.constraint(equalToConstant: 200),
                    khobarButton.heightAnchor.constraint(equalToConstant: 45)
                ])
        
        self.view.addSubview(makkahButton)
        self.makkahButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            makkahButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            makkahButton.topAnchor.constraint(equalTo: khobarButton.bottomAnchor, constant: 20),
            makkahButton.widthAnchor.constraint(equalToConstant: 200),
            makkahButton.heightAnchor.constraint(equalToConstant: 45)
        ])

    }
    
    @objc func didTapRiyadh() {
        navigateToCity(city: "Riyadh")
    }
    
    @objc func didTapKhobar() {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func didTapMakkah() {
        let vc = FourthViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func navigateToCity(city: String) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

