func showAlertMsg(msg:String){
    print(msg)
}
showAlertMsg(msg: "no internet connection")

func showAlertMsg(msg:String , isfinish:Bool){
    if isfinish {
        print("\(msg) and close popup")
    }else{
        print(msg)
    }
}
showAlertMsg(msg: "comment sent seccessfully", isfinish: true)
