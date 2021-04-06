println("Задание 1-2");
#Пользовательский ввод
println("Введите значение угла в радианах = ");
rad_str = readline();
#Попытка преобразовать строку к типу вещественное число
rad = tryparse(Float64, rad_str );
#Если введено не число, то программа прекращает свое выполнение
if rad == nothing
  println("Ошибка ввода угла");
  quit();
end;
#Вычисления градусов, минут и секунд введеного значения угла
deg_double = rad2deg(rad);
max_degrees = 360;
deg = trunc(Int, deg_double) % max_degrees;
frac_degree = deg_double - deg;
min_in_deg = 60;
min_double = frac_degree * min_in_deg;
min = trunc(Int, min_double);
frac_min = min_double - min;
sec_in_min = 60;
sec_double = frac_min * sec_in_min;
sec = floor(Int, sec_double);

println("Угол в радианах = $rad");
println("Угол в градусах = $deg_double");
println("Количество градусов = $deg");
println("Количество минут = $min");
println("Количество секунд = $sec");
