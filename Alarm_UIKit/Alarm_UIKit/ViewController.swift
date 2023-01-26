//
//  ViewController.swift
//  Alarm_UIKit
//
//  Created by Алина Власенко on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var titleAlarm = UILabel()
   // private lazy var imageSubtitle = UIImage()
    private lazy var subtitle = UILabel()
    private lazy var line = UIView()
    private lazy var dontSetAlarmLabel = UILabel()
    private lazy var setAlarmButton = UIButton()
    private lazy var line2 = UIView()
    
    //private lazy var alarmSeting = UITableView()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setup()
    }
    // MARK: - private
    
    private func setup() {
        setupStyle()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(titleAlarm)
        //view.addSubview(imageSubtitle)
        view.addSubview(subtitle)
        view.addSubview(line)
        view.addSubview(dontSetAlarmLabel)
        view.addSubview(setAlarmButton)
        view.addSubview(line2)
    }

    private func setupStyle() {
        setupView()
        setupTitleAlarm()
       // setupImageSubtitle() //не додається - помилка
        setupSubtitle()
        setupLine()
        setupDontSetAlarmLabel()
        setupSetAlarmButton()
        setupLine2()
        //setupAlarmSeting()
    }
    
    private func setupLayout() {
        titleAlarm.translatesAutoresizingMaskIntoConstraints = false
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
        dontSetAlarmLabel.translatesAutoresizingMaskIntoConstraints = false
        setAlarmButton.translatesAutoresizingMaskIntoConstraints = false
        line2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleAlarm.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            //titleAlarm.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            titleAlarm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            subtitle.topAnchor.constraint(equalTo: titleAlarm.bottomAnchor, constant: 30),
            subtitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            line.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 10),
            line.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            line.heightAnchor.constraint(equalToConstant: 1),
            line.widthAnchor.constraint(equalToConstant: 350),
            
            dontSetAlarmLabel.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20),
            dontSetAlarmLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            setAlarmButton.topAnchor.constraint(equalTo: dontSetAlarmLabel.bottomAnchor, constant: 5),
            setAlarmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            setAlarmButton.heightAnchor.constraint(equalToConstant: 30),
            setAlarmButton.widthAnchor.constraint(equalToConstant: 140),
            
            line2.topAnchor.constraint(equalTo: setAlarmButton.bottomAnchor, constant: 10),
            line2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            line2.heightAnchor.constraint(equalToConstant: 1),
            line2.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    private func setupTitleAlarm() {
        titleAlarm.text = "Будильник"
        titleAlarm.textColor = .white
        titleAlarm.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    }
    
//    private func setupImageSubtitle() {
//        imageSubtitle = UIImage(named: "bed")!
//    }
    
    private func setupSubtitle() {
        subtitle.text = "Сон | Підйом"
        subtitle.textColor = .white
        subtitle.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }
    
    private func setupLine() {
        line.backgroundColor = .darkGray
    }
    
    private func setupDontSetAlarmLabel() {
        dontSetAlarmLabel.text = "Немає будильників"
        dontSetAlarmLabel.textColor = .darkGray
        dontSetAlarmLabel.font = UIFont.systemFont(ofSize: 14)
    }
    
    private func setupSetAlarmButton() {
        setAlarmButton.setTitle("НАЛАШТУВАННЯ", for: .normal)
        setAlarmButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        setAlarmButton.backgroundColor = .darkGray
        setAlarmButton.titleLabel?.textColor = .red
        setAlarmButton.layer.cornerRadius = 15
        //setAlarmButton.titleLabel?.textCase.uppercase
        setAlarmButton.addTarget(self, action: #selector (myButtonClicked), for: .touchUpInside)
    }
    
    @objc private func myButtonClicked() {
        print("MyButton clicked")
    }
    
    private func setupLine2() {
        line.backgroundColor = .darkGray
    }
//    private func setupAlarmSeting() {
//
//    }
        
}

