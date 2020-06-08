  update characters
    set species ='Martian'
    where id = select MAX(id) from characters;
