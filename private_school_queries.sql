select studentid, firstname, lastname, dateofbirth, tuitionfees
from student;

select trainerid, firstname, lastname, tsubject
from trainer;

select assignmentid, title, description, subdatetime, oralmark, totalmark
from assignment;

select courseid, title, stream, ctype, startdate, enddate
from course;

select s.firstname, s.lastname, c.title, c.stream 
from studentpercourse spc, student s, course c
where spc.studentid=s.studentid
and spc.courseid=c.courseid;

select t.firstname, t.lastname, c.title, c.stream 
from trainerpercourse tpc, trainer t, course c
where tpc.trainerid=t.trainerid
and tpc.courseid=c.courseid;

select a.title, a.description, c.title, c.stream 
from assignmentpercourse apc, assignment a, course c
where apc.assignmentid=a.assignmentid
and apc.courseid=c.courseid;

select s.firstname, s.lastname, c.title, c.stream, a.title, a.description 
from assignmentpercourseperstudent ass, assignment a, course c, student s
where ass.assignmentid=a.assignmentid
and ass.courseid=c.courseid
and ass.studentid=s.studentid;

select s.firstname, s.lastname, c.title, c.stream
from studentpercourse spc, student s, course c
where spc.studentid=s.studentid
and spc.courseid=c.courseid
group by s.firstname, s.lastname
having count(*)>1; 

