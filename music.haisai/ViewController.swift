//
//  ViewController.swift
//  music.haisai
//
//  Created by 慶 on 2019/01/15.
//  Copyright © 2019 kei. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    let raizinPath =
        Bundle.main.bundleURL.appendingPathComponent("donpaf.mp3")
    var raizinPlayer = AVAudioPlayer()
    
    let fuzinPath =
        Bundle.main.bundleURL.appendingPathComponent("iyasasa.mp3")
    var fuzinPlayer = AVAudioPlayer()
    
    let bgmPath =
        Bundle.main.bundleURL.appendingPathComponent("haisai.mp3")
    var bgmPlayer = AVAudioPlayer()
    
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer , path:URL , count:Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("エラーが起きました")
        }
    }

    
    @IBAction func raizin(_ sender: Any) {
        soundPlayer(player: &raizinPlayer, path: raizinPath, count:0)
    }
    
    @IBAction func fuzin(_ sender: Any) {
        soundPlayer(player: &fuzinPlayer, path: fuzinPath, count:0)
    }
    
    
    
    @IBAction func bgm(_ sender: Any) {
        soundPlayer(player: &bgmPlayer, path: bgmPath, count:-1)
    }
    
    @IBAction func stop(_ sender: Any) {
        bgmPlayer.stop()
    }

}

