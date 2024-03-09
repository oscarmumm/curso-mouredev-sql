SELECT COUNT(age), age FROM users GROUP BY age;
-- devuelve cuantos resultados hay de cada uno (los agrupa) y muestra su valor
/*
| COUNT(age) |  age   |
|      1     |  33    |
|      1     |  20    |
|      2     |  15    |
|      0     | null   |
*/