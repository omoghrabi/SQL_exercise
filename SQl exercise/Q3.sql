select facid,name,membercost,monthlymaintenance 
from Facilities
where membercost < (0.2 * monthlymaintenance)
group by facid