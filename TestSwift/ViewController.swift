//
//  ViewController.swift
//  TestSwift
//
//  Created by Yousuf on 12/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // odd check
        for num in 1...5 {
            oddChecker(num:num, checker: isOdd(number:))
        }

        // frequency check
        showCharFrequency(of: "Anonymous")
        
        //add suffix
        var addSuffixClosure = getAddSuffixClouser(sufix: "ly")
        print(addSuffixClosure("hopeless"))
        print(addSuffixClosure("total"))
        
        addSuffixClosure = getAddSuffixClouser(sufix: "less")
        print(addSuffixClosure("fear"))
        print(addSuffixClosure("ruth"))
        
    }
    
    
    func oddChecker( num:Int, checker : (Int) -> Bool) {
        print("\(num) is odd: \(checker(num))")
    }
    
    func isOdd(number:Int) -> Bool {
        return number % 2 == 1;
    }
    
    func showCharFrequency(of str: String) {
        var freqDictionary : [Character: Int] = [:]
        for ch in str {
            let freq = (freqDictionary[ch] ?? 0) + 1
            //print("[\(ch)] = \(freq)")
            freqDictionary[ch] = freq
        }
        
        for entry in freqDictionary {
            print("\(entry.key) = \(entry.value)")
        }
    }
    
    func getAddSuffixClouser (sufix : String) -> (String) -> String {
        return {
            (str : String) -> String in
            return str + sufix
        }
    }


}

