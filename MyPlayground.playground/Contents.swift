var dict : [String : String] = ["car" : "Mercedes", "man" : "Taras"] //Не может быть два одинаковых ключа
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

dict["Computer"] = "Mac"//Так добавлять значение с ключом к Dictionary но так же можно заменить значение в существующем ключе
print(dict)

dict.keys//Можем взяь с Dictionary ключи
dict.values//Можем взяь с Dictionary значения
//Dictionary не распологает значения в том порядке в котором мы их вносили, он распологает их хаотично

dict.updateValue("HP", forKey: "Computer")//Еще один способ как можно поменять значение при этом возвращает пред старое значение а если не найдет такого ключа то вернет nil

//let comp = dict["Computer"]//Dictionary не возвращает типизированое значение, а возвращает опциональное, поэтому нужно делать ForsUnRap

if let comp = dict["Computer"] {
    print("\(comp)")
} else {
    print("no value for key Computer")//Можно так UnRap-нуть
}

//Чтоб убрать значение нужно сделать следущее
dict["man"] = nil
print("\(dict)\n")
//Или использовать метод
dict.removeValue(forKey: "car")
dict
//Чтоб обнулить или метод removeAll или:
dict = [:]
dict.isEmpty
//Как мы можем вывести значения?...

for i in dict4.keys {
    print("key = \(i), value = \(dict4[i]!)")
}
print("")
//or
for (key, value) in dict4 {
    print("key = \(key), value = \(value)")//В этом случае сразу UnRap-нется
}
print("")
