select  firstname,surname, joindate
from Members
where joindate = (select max(joindate) from Members)
