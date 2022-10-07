import UIKit

let birthdayIsToday = true
func singHappyBirthday() {
    if birthdayIsToday {
        if !invitedGuests.isEmpty {
            if cakeCandleslit {
                print("Happy Birthday")
            }else{
                print("Need to light the candles")
            }
        }else{
            print("Guest haven't arrived yet")
        }
    }else{
        print("no birthday today")
    }
    if birthdayIsToday {
        print("No birthday today")
        return
    }
    
    if invitedGuests.isEmpty {
        print("Guests haven't arrived yet")
        return
    }
    if CakeCandlesLit {
        print("Need to light the candles")
        return
    }
    print("Sing Happy Birthday")
}

func singHappyBirthday() {
    guard birthdayIsToday else {
        print("No birthday today")
        return
    }
    guard !invitedGuests.isEmpty else {
        print("Guest haven't arrived yet")
        return
    }
    guard cakeCandlesLit else {
        print("Need to light the candles")
        return
    }
    print("Sing Happy Birthday ")
}
singHappyBirthday()

func divide(_ number: Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }
    let result = number / divisor
    print(result)
    
}



