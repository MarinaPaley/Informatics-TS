rad_str = input("Угол = ");
rad = tryparse(Float64, rad_str );

if rad == nothing
  throw(StopException("Ошибка ввода угла"));
  quit();
end;

deg_double = rad2deg(rad);
deg = trunc(Int, deg_double);
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
