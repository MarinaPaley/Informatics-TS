include("add.jl");
include("sub.jl");
include("avg.jl");
include("read_int.jl");

# Ввод перечислимого типа данных
@enum ArithmeticOperation add_op = 0 sub_op = 1 avg_op = 2;

try
    # Ввод пользовательского выбора
    local message = "Введите арифметическую операцию " *
        "$(Int(add_op::ArithmeticOperation)) - сложение, "*
        "$(Int(sub_op::ArithmeticOperation)) - вычитание, "*
        "$(Int(avg_op::ArithmeticOperation)) - среднее арифметическое ";
    local user_input = read_int(message);
    local operation = ArithmeticOperation(user_input);

    # Ввод двух чисел
    local x = read_int("Введите первое число = ");
    local y = read_int("Введите второе число = ");

    # Выполнение арифметических операций
    if operation == add_op::ArithmeticOperation
        local sum = add(x, y);
        println("Сумма чисел $x + $y = $sum");
    elseif operation == sub::ArithmeticOperation
        local substraction = sub_op(x, y);
        println("Разность чисел $x - $y = $substraction");
    else
        local average = avg_op(x, y);
        println("Среднее арифметическое чисел $x и $y = $average");
    end;
catch
    println("Ошибка!");
end
