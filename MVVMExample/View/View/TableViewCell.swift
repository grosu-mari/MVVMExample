//
//  TableViewCell.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "MVVMTableViewCell"
    
    func configure(with model: ViewModelCell) {
        self.labelFirstName.text = model.firstName
        self.labelLastName.text = model.lastName
        self.labelSkillLevel.text = model.skillLevel.rawValue
        self.labelAge.text = String(model.age)
    }
    
    var labelFirstName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    var labelLastName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    var labelSkillLevel: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        return label
    }()
    
    var labelAge: UILabel = {
        let label = UILabel()
        label.textColor = .brown
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        contentView.addSubview(labelLastName)
        contentView.addSubview(labelFirstName)
        contentView.addSubview(labelSkillLevel)
        contentView.addSubview(labelAge)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        layoutSubviews()
    }
    
    private func setupLayout() {
        labelFirstName.translatesAutoresizingMaskIntoConstraints = false
        labelFirstName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        labelFirstName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        labelLastName.translatesAutoresizingMaskIntoConstraints = false
        labelLastName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60).isActive = true
        labelLastName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        labelAge.translatesAutoresizingMaskIntoConstraints = false
        labelAge.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        labelAge.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        labelSkillLevel.translatesAutoresizingMaskIntoConstraints = false
        labelSkillLevel.trailingAnchor.constraint(equalTo: labelAge.leadingAnchor, constant: -7).isActive = true
        labelSkillLevel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
}
