import Foundation

// Phantom Types

struct Money {
    enum Currency {
        case GBP, EUR, USD
    }

    let amount: NSDecimalNumber
    let currency: Currency
}

enum MoneyError: Error {
    case WrongCurrency
}

func convertGBPtoEUR(gbp: Money) throws -> Money {
    if gbp.currency == .GBP {
        let forex = NSDecimalNumber(mantissa: 133263, exponent: -5, isNegative: false)
        let convertedAmount = gbp.amount.decimalNumberByMultiplyingBy(forex)

        return Money(amount: convertedAmount, currency: .EUR)
    } else {
        throw MoneyError.WrongCurrency
    }
}

// Usage
let fivePounds = Money(amount: 5, currency: .GBP)
let threeEuros = Money(amount: 3, currency: .EUR)

do {
    let conversionResult = try convertGBPtoEUR(gbp: fivePounds)
} catch {
    print("Error!!! Wrong Currency Conversion!!!")
}

do {
    // passing in the wrong currency is allowed here
    let badConversionResult = try convertGBPtoEUR(gbp: threeEuros)
} catch {
    print("Error!!! Wrong Currency Conversion!!!")
}

// #############################################################################
protocol Currency { }

enum GBP: Currency { }
enum EUR: Currency { }
enum USD: Currency { }

struct Money<C: Currency> {
    let amount: NSDecimalNumber
}

// inputing Money in GBP, return Money in EUR!
func convertGBPtoEUR(gbp: Money<GBP>) -> Money<EUR> {
    let forex = NSDecimalNumber(mantissa: 133263, exponent: -5, isNegative: false)
    let convertedAmount = gbp.amount.decimalNumberByMultiplyingBy(forex)

    return Money(amount: convertedAmount)
}

// Usage
let fivePounds = Money<GBP>(amount: 5)
let threeEuros = Money<EUR>(amount: 3)
let convertedMoney = convertGBPtoEUR(fivePounds) // success!
let badMoney = convertGBPtoEUR(threeEuros) // compiler error!
