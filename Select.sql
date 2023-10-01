use JakubWilczakHotel;

--------------------SELECT 1 - WOLNE POKOJE--------------------------------------
select Number as Free_rooms from Rooms where Number not in(
	--podzapytanie wybieraj¹ce zajête pokoje
	select Rooms.Number
	from Rooms left join Visit on Rooms.Id_room = Visit.Id_room
	where Check_out > GETDATE()
);

--------------------SELECT 2 - OSTATNI TYDZIEÑ-----------------------------------
select Last_week.Id_client, Last_week.Name, Last_week.Surname, Rooms.Number,
	--obliczenie nale¿noœci
	(datediff(day,Last_week.Check_in,Last_week.Check_out) * Room_prices.Price) + Last_week.Breakfast + Last_week.Parking as Price
	from Rooms inner join
	--podzapytanie wybierajace wymeldowanych w ciagu ostatniego tygodnia
	(select Visit.*, Client.Name, Client.Surname
		from Visit inner join Client on Client.Id_client = Visit.Id_client
		where Visit.Check_out >= DATEADD(DAY,-7,GETDATE())
	) as Last_week on Last_week.Id_room = Rooms.Id_room
	inner join Room_prices on Room_prices.Id_size = Rooms.Id_size;

--------------------SELECT 3 - NIGDY NIE U¯YWANE POKOJE--------------------------
select Rooms.Number as Never_used_rooms 
	from Rooms left join Visit on Rooms.Id_room = Visit.Id_room 
	group by Rooms.Number 
	having count(Visit.Id_room) = 0;