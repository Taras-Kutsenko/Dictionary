let dict : [String : String] = ["car" : "Mercedes", "man" : "Taras"] //Не может быть два одинаковых ключа
let dict2 : [Int : String] = [0 : "car", 1 : "Taras"]
let dict3 : Dictionary<String, Double> = ["a" : 2.0]//Можено еще так записывать

dict["car"]//Вызываем значение по ключу
dict2[1]
//Но Swift сам опредиляет тип данных поэтому нам не нужно указывать тип данных, чем меньше текста тем лучше

let dict4 = [4 : "Taras", 2 : "Yuliia"]
print("\(dict4[4]!) loves \(dict4[2]!)")//Почемуто при выводе нужно сделать ForseUnRap

dict4.count//Возвращает количество пар ключ - значение
dict4.isEmpty//Можно проверить пустой Dictionary или нет

var dict5 = [String : String]()

dict5.count
dict5.isEmpty

