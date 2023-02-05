//
//  otpViewController.swift
//  Hi Lite Mall
//
//  Created by Mayur Bakraniya on 21/11/22.
//

import UIKit
import Alamofire

class otpViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var resend_otp_lbl: UILabel!
    @IBOutlet weak var underLine_view: UIView!
    @IBOutlet weak var err_stack: UIStackView!
    @IBOutlet weak var warning_img: UIImageView!
    @IBOutlet weak var err_lbl: UILabel!
    @IBOutlet weak var pin4_txt: UITextField!
    @IBOutlet weak var pin3_txt: UITextField!
    @IBOutlet weak var pin2_txt: UITextField!
    @IBOutlet weak var pin1_txt: UITextField!
    
    @IBOutlet weak var resend_btn: UIButton!
    @IBOutlet weak var timer_lbl: UILabel!
    var number = String()
    
    var countdownTimer: Timer!
    var totalTime = 60
    
    var user_id = String()
    
    @IBOutlet weak var number_lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resend_btn.isUserInteractionEnabled = true
        
        number_lbl.text = "OTP is sent to +91 \(number)"
        
        pin1_txt.delegate = self
        pin2_txt.delegate = self
        pin3_txt.delegate = self
        pin4_txt.delegate = self
        
        
        pin1_txt.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        pin2_txt.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        pin3_txt.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        pin4_txt.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        
        startTimer()
    }
    
    func startTimer() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        timer_lbl.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
            resend_btn.isUserInteractionEnabled = false
        } else {
            
            timer_lbl.isHidden = true
            resend_btn.isUserInteractionEnabled = true
            resend_otp_lbl.textColor = UIColor(named: "txt_color_select")
            underLine_view.backgroundColor = UIColor(named: "txt_color_select")
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        //     let hours: Int = totalSeconds / 3600
        return String(format: "%02d:%02d", minutes, seconds)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.view1.layer.borderWidth = 2
        self.view1.layer.borderColor = UIColor(named: "btn_recognize")?.cgColor
        self.view2.layer.borderWidth = 2
        self.view2.layer.borderColor = UIColor(named: "color2")?.cgColor
        self.view3.layer.borderWidth = 2
        self.view3.layer.borderColor = UIColor(named: "color2")?.cgColor
        self.view4.layer.borderWidth = 2
        self.view4.layer.borderColor = UIColor(named: "color2")?.cgColor
        
        pin1_txt.becomeFirstResponder()
        
    }
    
    @IBAction func resend_btn(_ sender: UIButton) {
        endTimer()
        timer_lbl.isHidden = false
        resend_otp_lbl.textColor = UIColor(named: "color1")
        underLine_view.backgroundColor = UIColor(named: "color1")
        totalTime = 60
        signUp(no: number)
    }
    
    @objc func textFieldDidChange(textField: UITextField){
        
        let text = textField.text
        
        if text?.utf16.count==1{
            switch textField{
            case pin1_txt:
                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "btn_recognize")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "color2")?.cgColor
                pin2_txt.becomeFirstResponder()
            case pin2_txt:
                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "btn_recognize")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "color2")?.cgColor
                pin3_txt.becomeFirstResponder()
            case pin3_txt:
                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "btn_recognize")?.cgColor
                pin4_txt.becomeFirstResponder()
            case pin4_txt:
                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "color2")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "btn_recognize")?.cgColor
                pin4_txt.resignFirstResponder()
            default:
                break
            }
            
            if pin1_txt.text != "" && pin2_txt.text != "" && pin3_txt.text != "" && pin4_txt.text != ""{
                let txt = "\(pin1_txt.text ?? "")\(pin2_txt.text ?? "")\(pin3_txt.text ?? "")\(pin4_txt.text ?? "")"
                
                login(no: number, otp: txt)
            }
            
        }else{
            switch textField {
            case pin4_txt:
                pin3_txt.becomeFirstResponder()
            case pin3_txt:
                pin2_txt.becomeFirstResponder()
            case pin2_txt:
                pin1_txt.becomeFirstResponder()
            case pin1_txt:
                pin1_txt.resignFirstResponder()
            default:
                break
            }
            self.view1.layer.borderWidth = 2
            self.view1.layer.borderColor = UIColor(named: "color2")?.cgColor
            self.view2.layer.borderWidth = 2
            self.view2.layer.borderColor = UIColor(named: "color2")?.cgColor
            self.view3.layer.borderWidth = 2
            self.view3.layer.borderColor = UIColor(named: "color2")?.cgColor
            self.view4.layer.borderWidth = 2
            self.view4.layer.borderColor = UIColor(named: "color2")?.cgColor
            self.err_stack.isHidden = true
        }
        
        
        
    }
}

extension otpViewController{
    
    func signUp(no:String){
        
        let phone = [
            "countryCode":"+91",
            "phoneNumber": no
        ]
        
        let param = ["phone":phone]
        
        NetworkCall(data: param, url: nil, service: .otp_generator, method: .post).executeQuery(){
            (result: Result<otp_generator,Error>) in
            switch result{
            case .success(let phone_json):
                print(phone_json)
                self.startTimer()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func login(no:String,otp:String){
        
        let phone = [
            "countryCode":"+91",
            "phoneNumber": no
        ]
        
        let param = [
            "phone":phone,
            "otp":otp
        ] as [String : Any]
        
        NetworkCall(data: param, url: nil, service: .otp_login, method: .post).executeQuery(){
            (result: Result<otp_login,Error>) in
            switch result{
            case .success(let login_json):
                print(login_json)
                self.endTimer()

                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "color_green")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "color_green")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "color_green")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "color_green")?.cgColor
                self.err_stack.isHidden = false
                self.warning_img.isHidden = true
                self.err_lbl.text = "OTP verified"
                self.err_lbl.textColor = UIColor(named: "color_green")

                self.user_id = login_json.userId ?? ""

                self.userDetail(user: self.user_id)
            case .failure(let error):
                print(error)
                let d = error.localizedDescription
                print(d)
                
                if self.totalTime != 0 {
                    self.totalTime -= 1
                } else {
                    self.endTimer()
                }

                self.view1.layer.borderWidth = 2
                self.view1.layer.borderColor = UIColor(named: "error_color")?.cgColor
                self.view2.layer.borderWidth = 2
                self.view2.layer.borderColor = UIColor(named: "error_color")?.cgColor
                self.view3.layer.borderWidth = 2
                self.view3.layer.borderColor = UIColor(named: "error_color")?.cgColor
                self.view4.layer.borderWidth = 2
                self.view4.layer.borderColor = UIColor(named: "error_color")?.cgColor
                self.err_stack.isHidden = false
                self.warning_img.isHidden = false
                self.err_lbl.text = "Incorrect OTP"
                self.err_lbl.textColor = UIColor(named: "error_color")
            }
        }
    }
    
    func userDetail(user:String){
        
        AF.request("https://app-dev.proximety.io/api/users/\(user)", method: .get,encoding: JSONEncoding.default).validate(statusCode: 200..<300).validate(contentType: ["application/json"]).responseData{ response in
            switch response.result {
                
            case .success:
                // handle success here
                if let data = response.data {
                    if let json = try? (JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]) {
                        print(json)
                        
                        let name = json["name"] as? NSDictionary ?? NSDictionary()
                        let contactInfo = json["contactInfo"] as? NSDictionary ?? NSDictionary()
                        let contact = contactInfo["phoneNumber"] as? NSDictionary ?? NSDictionary()
                        let link = json["_links"] as? NSDictionary ?? NSDictionary()
                        let link_self = link["self"] as? NSDictionary ?? NSDictionary()
                        
                        if name["fullName"] as? String != "" && contactInfo["primaryEmail"] as? String != nil && contactInfo["primaryEmail"] as? String != ""{
                            //move to tab
                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                            let detail:UITabBarController = storyboard.instantiateViewController(withIdentifier: "tabbar") as! UITabBarController
                            self.navigationController?.pushViewController(detail, animated: true)
                        }else{
                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                            let detail:moreInfoVC = storyboard.instantiateViewController(withIdentifier: "moreInfoVC") as! moreInfoVC
                            detail.user_id = self.user_id
                            self.navigationController?.pushViewController(detail, animated: true)
                        }
                    }
                }
            case .failure:
                // handle errors (including `validate` errors) here
                if let statusCode = response.response?.statusCode {
                    if statusCode == 400 {
                        // handle 409 specific error here, if you want
                        if let data = response.data {
                            if let json = try? (JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]) {
                                print(json)
                            }
                        }
                    }
                }
            }
        }
    }
}
