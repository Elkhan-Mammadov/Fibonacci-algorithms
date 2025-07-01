with fib_num(level_n,num_1,num_2) as(

select 1,0,1  from dual
union all
select level_n+1,num_2,num_1+num_2 from fib_num where level_n<&fib_count)

select 'Fibonacci numbers :'||listagg(num_1,',') within group(order by level_n) as fibonacci from fib_num;

