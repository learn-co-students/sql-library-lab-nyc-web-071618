
update characters set species='Martian' where id in (select id from characters order by id desc limit 1);
