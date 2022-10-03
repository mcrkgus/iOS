//
//  ViewController.swift
//  DatePicker
//
//  Created by Gahyun Kim on 2022/09/19.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    //timeSelector : 타이머가 구동되면 실행할 함수를 지정함
    let interval = 1.0
    //타이머의 간격 값임 1.0은 1초를 의미함
    var count = 0
    //count는 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수임
    
    
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        //timeInterval : 타이머 간격
        //target : 동작될 view
        //selector : 타이머가 구동될 때 실행할 함수
        //userInfo : 사용자 정보
        //repeats : 반복 여부
    }


    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter() //날짜를 출력하기 위한 DateFormatter라는 클래스 상수 formatter 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"   //formatter의 dateFormat 속성을 설정
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        //데이트 피커에서 선택한 날짜를 dateFormat에서 설정한 포맷대로 string으로 변환하여 lblPickerTime.text에 넣음
    }
    
    //타이머 동작 함수 추가하기
    @objc func updateTime() {
        //lblCurrentTime.text = String(count)
        //string으로 변환한 count 값을 lblCurrentTime 레이블의 text 속성에 저장함
        //count = count + 1   //count 값을 1 증가시킴
        
        let date = NSDate()     //현재 시간을 NSDate함수를 사용하여 가져옴
        
        let formatter = DateFormatter() //날짜를 출력하기 위한 DateFormatter라는 클래스 상수 formatter 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"    //formatter의 dateFormat 속성을 설정
        lblCurrentTime.text = " 현재시간 : " + formatter.string(from: date as Date)
        //피커 뷰에서 선택한 날짜를 dateFormat에서 설정한 포맷대로 string으로 변환하여 lblCurrentTime의 text에 넣음
    }
}

