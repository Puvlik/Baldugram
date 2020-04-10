//
//  SetupProfileViewController.swift
//  Baldugram
//
//  Created by Паша Клопот on 4/9/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import Foundation
import UIKit

class SetupProfileViewController: UIViewController {
    
    let setupProfileLabel = UILabel(text: "Set up profile", font: .avenir26())
    
    let fullImageView = AddPhotoView()
    
    let fullNameLabel = UILabel(text: "Full name")
    let aboutmeLabel = UILabel(text: "About me")
    let sexLabel = UILabel(text: "Sex")
    
    let fullNameTextField = LineTextField(font: .avenir20())
    let aboutMeTextField = LineTextField(font: .avenir20())
    let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Femail")
    
    let goToChatsButton = UIButton(title: "Go to chats!", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension SetupProfileViewController {
    private func setupConstraints() {
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField],
                                            axis: .vertical,
                                            spacing: 0)
        let aboutMeStackView = UIStackView(arrangedSubviews: [aboutmeLabel, aboutMeTextField],
        axis: .vertical,
        spacing: 0)
        let sexStackView = UIStackView(arrangedSubviews: [sexLabel, sexSegmentedControl],
        axis: .vertical,
        spacing: 12)
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews: [
            fullNameStackView,
            aboutMeStackView,
            sexStackView,
            goToChatsButton
            ], axis: .vertical, spacing: 40)
        
        setupProfileLabel.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(setupProfileLabel)
        view.addSubview(fullImageView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            setupProfileLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            setupProfileLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fullImageView.topAnchor.constraint(equalTo: setupProfileLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

// MARK: - SwiftUI
import SwiftUI

struct SetupProfileVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let setupProfileVC = SetupProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) -> SetupProfileViewController {
            return setupProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SetupProfileVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) {
            
        }
    }
}
