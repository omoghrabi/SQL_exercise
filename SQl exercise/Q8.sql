select facilities.name, concat(members.firstname,' ',members.surname) as customer,
case when bookings.memid =  0 then case when bookings.slots * facilities.guestcost < 30 
															     then bookings.slots * facilities.guestcost 
															 end 
		 else case when bookings.slots * facilities.membercost < 30 
							then bookings.slots * facilities.membercost 
				 end 
end as cost
from bookings, Facilities, members
where bookings.starttime like '2012-09-14%'  and bookings.facid =  facilities.facid  and members.memid = bookings.memid 
order by cost desc