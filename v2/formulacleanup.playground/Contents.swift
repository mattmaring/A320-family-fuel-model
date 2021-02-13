import UIKit

let fileURL = Bundle.main.url(forResource: "import", withExtension: "txt")

var data = try String(contentsOfFile: fileURL!.path, encoding: String.Encoding.utf8)

data = data.replacingOccurrences(of: "(Intercept)", with: "")
//data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$TOW, fuel$ISA, degree = 5, raw = TRUE)", with: "")
//data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$TOW, fuel$ISA, degree = 6, raw = TRUE)", with: "")
//data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$TOW, fuel$ISA, degree = 7, raw = TRUE)", with: "")
data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$WEIGHT..LBS., degree = 4, raw = TRUE)", with: "")
data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$WEIGHT..LBS., degree = 5, raw = TRUE)", with: "")
data = data.replacingOccurrences(of: "polym(fuel$FL, fuel$WEIGHT..LBS., degree = 6, raw = TRUE)", with: "")

//if let regex = try? NSRegularExpression(pattern: "([0-9]{1}).([0-9]{1}).([0-9]{1}) ", options: .caseInsensitive) {
//    data = regex.stringByReplacingMatches(in: data, options: [], range: NSRange(location: 0, length:  data.count), withTemplate: "A$1B$2C$3")
//}

if let regex = try? NSRegularExpression(pattern: "([0-9]{1}).([0-9]{1})\n", options: .caseInsensitive) {
    data = regex.stringByReplacingMatches(in: data, options: [], range: NSRange(location: 0, length:  data.count), withTemplate: "A$1B$2")
}

data = data.replacingOccurrences(of: " ", with: "")

data = data.replacingOccurrences(of: "A0", with: "")
data = data.replacingOccurrences(of: "A1", with: "crz*")
data = data.replacingOccurrences(of: "A2", with: "crz*crz*")
data = data.replacingOccurrences(of: "A3", with: "crz*crz*crz*")
data = data.replacingOccurrences(of: "A4", with: "crz*crz*crz*crz*")
data = data.replacingOccurrences(of: "A5", with: "crz*crz*crz*crz*crz*")
data = data.replacingOccurrences(of: "A6", with: "crz*crz*crz*crz*crz*crz*")
data = data.replacingOccurrences(of: "A7", with: "crz*crz*crz*crz*crz*crz*crz*")
data = data.replacingOccurrences(of: "A8", with: "crz*crz*crz*crz*crz*crz*crz*crz*")

//data = data.replacingOccurrences(of: "B0", with: "")
//data = data.replacingOccurrences(of: "B1", with: "tow*")
//data = data.replacingOccurrences(of: "B2", with: "tow*tow*")
//data = data.replacingOccurrences(of: "B3", with: "tow*tow*tow*")
//data = data.replacingOccurrences(of: "B4", with: "tow*tow*tow*tow*")
//data = data.replacingOccurrences(of: "B5", with: "tow*tow*tow*tow*tow*")
//data = data.replacingOccurrences(of: "B6", with: "tow*tow*tow*tow*tow*tow*")
//data = data.replacingOccurrences(of: "B7", with: "tow*tow*tow*tow*tow*tow*tow*")
//data = data.replacingOccurrences(of: "B8", with: "tow*tow*tow*tow*tow*tow*tow*tow*")

data = data.replacingOccurrences(of: "B0", with: "")
data = data.replacingOccurrences(of: "B1", with: "weight*")
data = data.replacingOccurrences(of: "B2", with: "weight*weight*")
data = data.replacingOccurrences(of: "B3", with: "weight*weight*weight*")
data = data.replacingOccurrences(of: "B4", with: "weight*weight*weight*weight*")
data = data.replacingOccurrences(of: "B5", with: "weight*weight*weight*weight*weight*")
data = data.replacingOccurrences(of: "B6", with: "weight*weight*weight*weight*weight*weight*")
data = data.replacingOccurrences(of: "B7", with: "weight*weight*weight*weight*weight*weight*weight*")
data = data.replacingOccurrences(of: "B8", with: "weight*weight*weight*weight*weight*weight*weight*weight*")

data = data.replacingOccurrences(of: "C0", with: "")
data = data.replacingOccurrences(of: "C1", with: "isa*")
data = data.replacingOccurrences(of: "C2", with: "isa*isa*")
data = data.replacingOccurrences(of: "C3", with: "isa*isa*isa*")
data = data.replacingOccurrences(of: "C4", with: "isa*isa*isa*isa*")
data = data.replacingOccurrences(of: "C5", with: "isa*isa*isa*isa*isa*")
data = data.replacingOccurrences(of: "C6", with: "isa*isa*isa*isa*isa*isa*")
data = data.replacingOccurrences(of: "C7", with: "isa*isa*isa*isa*isa*isa*isa*")
data = data.replacingOccurrences(of: "C8", with: "isa*isa*isa*isa*isa*isa*isa*isa*")

data = "(" + data.replacingOccurrences(of: "\n", with: ") + (") + ")"

data = data.replacingOccurrences(of: " + ()", with: "")

print(data)
