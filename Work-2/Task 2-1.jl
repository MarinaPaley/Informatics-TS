include("input_int.jl");
include("input_double.jl");
include("is_correct.jl");
include("get_rectangle_area.jl");
include("get_triangle_area.jl");
include("is_valid_rectangle.jl");
include("is_valid_triangle.jl");

println("Task 2-1");

# Введем перечислимый тип данных
@enum Shape rectangle = 1 triangle = 2
# Ввод пользоавателем номера фигуры
user_input = input_int("Введите число, для выбора фигуры: " *
                        "$(Int(rectangle::Shape)) - прямоугольник, " *
                        "$(Int(triangle::Shape)) - треугольник");
# Проверка и расчет
try
    local figure = Shape(user_input);
    # расчет площади прямоугольника
    if figure == rectangle::Shape
        local width = input_double("Введите ширину прямоугольника ");
        local length = input_double("Введите длину прямоугольника ");

        if is_valid_rectangle(width, length)
            local rectangle_area = get_rectangle_area(width, length);
            println("Площадь прямоугольника $rectangle_area");
        else
            println("Ошибка ввода данных для прямоугольника");
    end;
    # расчет площади треугольника
    else
        local a = input_double("Введите сторону треугольника");
        local b = input_double("Введите сторону треугольника");
        local c = input_double("Введите сторону треугольника");

        if is_valid_triangle(a, b, c)
            local triangle_area = get_triangle_area(a, b, c);
            println("Площадь треугольника $triangle_area");
        else
            println("Ошибка ввода данных для треугольника");
        end;
    end;
        # обработка ошибки ввода
catch
    println("Ошибка ввода выбора фигуры");
end;
