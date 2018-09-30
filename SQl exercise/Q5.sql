select name,monthlymaintenance,
	case when monthlymaintenance < 100 then 'cheap' 
				else 'expensive' end as label
from Facilities

