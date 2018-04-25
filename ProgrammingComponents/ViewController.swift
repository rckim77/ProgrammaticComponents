//
//  ViewController.swift
//  ProgrammingComponents
//
//  Created by Raymond Kim on 4/24/18.
//  Copyright © 2018 Penny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 80)
        label.textColor = .white

        return label
    }()

    var captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white

        return label
    }()

    var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = UIColor(red: 1/255, green: 157/255, blue: 211/255, alpha: 1)

        return button
    }()

    var skipButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "Title"
        captionLabel.text = "Caption"
        loginButton.setTitle("Login", for: .normal)
        skipButton.setTitle("Skip", for: .normal)

        view.addSubview(titleLabel)
        view.addSubview(captionLabel)
        view.addSubview(loginButton)
        view.addSubview(skipButton)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: Constants.titleLabelTopAnchorConstant),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            captionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Constants.captionLabelTopAnchorConstant),
            captionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: skipButton.topAnchor, constant: Constants.loginButtonBottomAnchorConstant),
            loginButton.widthAnchor.constraint(equalToConstant: Constants.loginButtonWidthAnchorConstant),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            skipButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            skipButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: Constants.skipButtonBottomAnchorConstant)
        ])
    }

    struct Constants {
        static let titleLabelTopAnchorConstant: CGFloat = 48
        static let captionLabelTopAnchorConstant: CGFloat = 6
        static let loginButtonBottomAnchorConstant: CGFloat = -12
        static let loginButtonWidthAnchorConstant: CGFloat = 120
        static let skipButtonBottomAnchorConstant: CGFloat = -100
    }


}

