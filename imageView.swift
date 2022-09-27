//
//  ViewController.swift
//  ImageView
//
//  Created by Gahyun Kim on 2022/09/15.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false      //확대 여부를 나타내는 변수 isZoom
    var imgOn : UIImage?    //켜진 전구 이미지가 있는 UIImage타입의 변수 imgOn
    var imgOff : UIImage?   //꺼진 전구 이미지가 있는 UIImage타입의 변수 imgOff
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //UIImage타입의 변수 imgOn과 imgOff에 파일명 입력
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        //이미지 뷰의 아웃렛 변수 'imgView'에 방금 선언한 'imgOn' 이미지를 지정함
        imgView.image = imgOn
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        //이미지를 확대할 배율 상수 scale
        var newWidth : CGFloat, newHeight : CGFloat
        //이미지의 가로, 세로 길이를 저장할 변수 newWidth, newHeight
        
        if (isZoom) {   //true      //현재 상태가 '확대'일 때, 즉, isZoom이 true일 때
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale  //이미지 프레임의 가로, 세로 크기에 scale값을 나누어 할당함
            btnResize.setTitle("확대", for: .normal)  //버튼의 텍스트를 "확대"로 변경
        }
        else {  //false     //현재 상태가 '축소'일 때, 즉, isZoom이 false일 때
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale  //이미지 프레임의 가로, 세로 크기에 scale값을 곱하여 할당함
            btnResize.setTitle("확대", for: .normal)  //버튼의 텍스트를 "축소"로 변경
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        //CGSize 메서드를 사용하여 이미지 뷰의 프레임 크기를 변경
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        }
        else {
            imgView.image = imgOff
        }
    }
    
}

