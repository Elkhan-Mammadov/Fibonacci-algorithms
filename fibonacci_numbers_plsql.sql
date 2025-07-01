

declare
fib_count number:=&count;
num_1 number :=0;
num_2 number :=1;
num_3 number ;
fib_row varchar2(4000):='';
begin

for i in 1..fib_count loop

if i<fib_count then
fib_row:=fib_row|| num_1||',';

else fib_row:=fib_row|| num_1;
end if;

num_3:=num_1+num_2;
num_1:=num_2;
num_2:=num_3;

end loop;

DBMS_OUTPUT.PUT_line('Fibonacci numbers : '||fib_row);

end;
/
