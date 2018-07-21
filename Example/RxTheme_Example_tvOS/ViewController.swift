//
//  ViewController.swift
//  RxTheme_Example_tvOS
//
//  Created by wddwycc on 2018/3/7.
//  2018 Copyright (c) RxSwiftCommunity. All rights reserved.
//

import UIKit
import RxSwift


class ViewController: UIViewController {

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.text = "presss playPause to switch theme"
        view.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        themeService.bind([
            ({ $0.textColor }, [label.rx.textColor]),
            ({ $0.backgroundColor }, [view.rx.backgroundColor])
        ]).disposed(by: disposeBag)

        let tapGesture = UITapGestureRecognizer()
        tapGesture.allowedPressTypes = [NSNumber(value: UIPressType.playPause.rawValue)]
        view.addGestureRecognizer(tapGesture)
        tapGesture.rx.event
            .bind { (_) in
                themeService.set(themeService.theme == .dark ? .light : .dark)
            }
            .disposed(by: disposeBag)

    }
}

