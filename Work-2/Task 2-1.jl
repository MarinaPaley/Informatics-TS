include("input_int.jl");
include("input_double.jl");
include("is_correct.jl");
include("get_rectangle_area.jl");
include("get_triangle_area.jl");

user_input = input_int("Введите число, для выбора фигуры:
                        0 - прямоугольник, 1 - треугольник");

if user_input != nothing
    # расчет площади прямоугольника
    if user_input == 0
        width = input_double("Введите ширину прямоугольника ");
        length = input_double("Введите длину прямоугольника ");
        if width != nothing && length != nothing &&
            is_correct(width) && is_correct(length)
                rectangle_area =get_rectangle_area(width, length);
                println("Площадь прямоугольника $rectangle_area");
        else
            println("Ошибка ввода данных");
        end;
# расчет площади треугольника
    elseif user_input == 1
        a = input_double("Введите сторону треугольника");
        b = input_double("Введите сторону треугольника");
        c = input_double("Введите сторону треугольника");
        if a != nothing && b != nothing && c != nothing &&
            is_correct(a) && is_correct(b) && is_correct(c)
                triangle_area = get_triangle_area(a, b, c);
                println("Площадь треугольника $triangle_area");
        else
            println("Ошибка ввода данных");
        end;
    else
        println("Ошибка ввода");
    end;
else
    println("Ошибка ввода данных");
end;
