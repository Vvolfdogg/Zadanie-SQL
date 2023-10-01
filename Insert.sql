use JakubWilczakHotel;

insert into Room_prices values(200.00);
insert into Room_prices values(260.00);
insert into Room_prices values(340.00);
insert into Room_prices values(400.00);

insert into Rooms values('101',1);
insert into Rooms values('102',1);
insert into Rooms values('103',2);
insert into Rooms values('104',2);
insert into Rooms values('105',2);
insert into Rooms values('201',2);
insert into Rooms values('202',3);
insert into Rooms values('203',3);
insert into Rooms values('204',3);
insert into Rooms values('205',4);

insert into Client(Name, Surname, Phone_number) values('Jimi', 'Hendrix', '123456789');
insert into Client values('John', 'Frusciante', '987654321');
insert into Client values('Nile', 'Rodgers', '837201847');
insert into Client values('David', 'Gilmour', '513628309');
insert into Client values('Syd', 'Barret', '728395038');
insert into Client values('Kurt', 'Cobain', '758495514');

insert into Visit(Id_room, Id_client, Check_in, Check_out, Parking, Breakfast) values(1,2,'2020-12-02','2020-12-12',100.00,120.00);
insert into Visit values(2,2,'2020-12-02','2020-12-12',0.00,120.00);
insert into Visit values(3,1,'2020-12-14','2020-12-19',0.00,0.00);
insert into Visit values(4,3,'2020-12-04','2020-12-06',20.00,30.00);
insert into Visit values(10,6,'2020-11-16','2020-11-21',50.00,0.00);
insert into Visit values(7,4,'2020-12-13','2020-12-16',10.00,45.00);
insert into Visit values(7,5,'2021-01-03','2021-01-20',70.00,105.00);

insert into Positions values('Manager',4100.00);
insert into Positions values('Reception',3400.00);
insert into Positions values('Cleaning',2700.00);
insert into Positions values('Cooking',3100.00);
insert into Positions values('IT',3500.00);

insert into Employees values('Jan','Janowski','2020-10-14',1);
insert into Employees values('Martyna','Martynowska','2020-10-16',2);
insert into Employees values('Patryk','Patrykowski','2020-11-11',2);
insert into Employees values('Jakub','Jakubiñski','2020-10-18',3);
insert into Employees values('Monika','Monikowska','2020-12-02',3);
insert into Employees values('Andrzej','Andrzejewski','2020-10-16',4);
insert into Employees values('Micha³','Michalski','2020-10-15',5);