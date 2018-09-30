SELECT membercost,
		count(case when membercost = '0.0' then 1 END) as total_num_zero_cahrge

 FROM Facilities
 group by membercost