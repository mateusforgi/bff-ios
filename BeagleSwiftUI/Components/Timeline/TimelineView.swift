//
//  LoansTimeLineTableView.swift
//  BeagleSwiftUI
//
//  Created by Mateus Forgiarini on 6/26/20.
//  Copyright © 2020 Mateus Forgiarini da Silva. All rights reserved.
//

import UIKit

struct TimelineViewModel: Decodable {
    
    let value: String
    let description: String
    let date: String
    
}


class TimelineView: UIView {
    
    var item: TimelineViewModel!
    private let lightGray = UIColor(red: 107/255.0, green: 107/255.0, blue: 107/255.0, alpha: 1)
    
    private lazy var horizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
        return stackView
    }()
    
    private lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = item.description
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.text = item.value
        label.textColor = lightGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = item.date
        label.textColor = lightGray
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    private lazy var timelineSeparator: UIView = {
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: 2).isActive = true
        view.backgroundColor = UIColor(red: 255/255.0, green: 85/255.0, blue: 146/255.0, alpha: 1)
        return view
    }()
    
    private lazy var circle: UIView = {
        let view = UIView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        view.backgroundColor = UIColor(red: 255/255.0, green: 85/255.0, blue: 146/255.0, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    func setupView(item: TimelineViewModel) {
        self.item = item
        
        verticalStackView.addArrangedSubview(descriptionLabel)
        verticalStackView.addArrangedSubview(valueLabel)
        verticalStackView.addArrangedSubview(dateLabel)
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        timelineSeparator.translatesAutoresizingMaskIntoConstraints = false
        circle.translatesAutoresizingMaskIntoConstraints = false
        timelineSeparator.addSubview(circle)
        horizontalStackView.addArrangedSubview(timelineSeparator)
        horizontalStackView.addArrangedSubview(verticalStackView)
        addSubview(horizontalStackView)
        NSLayoutConstraint.activate([
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            timelineSeparator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
        ])
    }
    
}
