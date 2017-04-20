select d.*
from dept d
inner join (
	select code, max(st_area(geom)) as max_area
	from dept
	group by code
) groupd
on d.code = groupd.code and st_area(d.geom) = groupd.max_area

select d.code, d.nom, s.level, s.levelmin, s.lebelmax as levelmax, d.geom from 
deptsism s 
inner join deptunique d on s.id = cast(d.code as integer)
where d.code <> '2A' and d.code <> '2B'
