select
 '123-456-789' as old,
replace ('123-456-789', '-' , '' ) as new

select 
'read.txt' as old_text,
replace ('read.txt', '.txt', '.csv') as new_text 