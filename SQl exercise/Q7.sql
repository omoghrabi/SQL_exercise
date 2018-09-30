select distinct (concat(firstname ,' ' , surname)) as customer, name from Facilities,Bookings,Members
where Facilities.facid = Bookings.facid  in (0,1) and bookings.memid = Members.memid
order by customer
