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

//HOME WORK!!!
print("HOME WORK!!!!")

//1. Создать Dictionary - журнал студентов где ключ это Имя Фамилия а значение это оценка
var jorurnal = ["Taras Kutsenko" : 12, "Yuliia Kutsenko" : 10, "Dawid Kutsenko" : 11, "Samuel Kutsenko" : 9, "Ivan Ivanov" : 5]
print("\(jorurnal)\n")

//1.1. Несколько студентов перездали контролную и им нужно повысить оценку
jorurnal.updateValue(12, forKey: "Yuliia Kutsenko")
jorurnal.updateValue(9, forKey: "Ivan Ivanov")
jorurnal.updateValue(11, forKey: "Samuel Kutsenko")
print("\(jorurnal)\n")

//1.2. Потом в группу записались еще несколько студентов и написали контрольные
jorurnal["Yurii Pobochi"] = 10
jorurnal["Galina Pobochi"] = 11
print("\(jorurnal)\n")

//1.3. Потом несколько студентов которые были до этого ушли и их нужно вычеркнуть из журнала
jorurnal["Ivan Ivanov"] = nil
jorurnal["Yuliia Kutsenko"] = nil
print("\(jorurnal)\n")

//1.4. Посчитать общий бал группы и средний бал группы
var sum = 0
var averageRating = 0

for i in jorurnal.values {
    sum += i
}
print("Sum of rating is \(sum)\n")
averageRating = sum / jorurnal.count
print("Avarage rating is \(averageRating)\n")

//2. Создать Dictionary дни в месяцах где месяц ключ а количество дней значение
let yer = ["Jan" : 31, "Feb" : 28, "Mar" : 31, "Apr" : 30, "May" : 31, "Jun" : 30, "Jul" : 31, "Aug" : 31, "Sep" : 30, "Oct" : 31, "Nov" : 30, "Dec" : 31]

//2.1. Вывести это на экран используя тюплы
for (mons, days) in yer {
    print("Mons \(mons) have a \(days) days")
}
print("")
//2.2. Вывести на экран проходя по масиву ключей но проверить работает ли это сейчас!!!!
let mons = yer.keys.map({$0})//Переводит Dictionary в Array
var days = yer.values.map({$0})

for i in 0..<mons.count {
    print("Mons \(mons[i]) have a \(days[i]) days")
}
print("")
//3. Создать Dictionary в котором ключ это адрес ячейки на шахматной доске String, значение должно быть bool. True эсли ячейка белая и False эсли черная и это нужно использовать цикл в цыкле с помошью масивов

