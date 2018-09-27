
Department.create(id: '1',depname:'CSE')
Department.create(id: '2',depname:'ME')
Department.create(id:'3',depname:'CE')
Department.create(id:'4',depname:'CHE')


Semester.create(id:'1',no_eligibleELectives:"2")
Semester.create(id:'2',no_eligibleELectives:"3")



Contain.create(id:'1',semester_id:'1',department_id:'1')
Contain.create(id:'2',semester_id:'2',department_id:'1')
Contain.create(id:'3',semester_id:'3',department_id:'1')
Contain.create(id:'4',semester_id:'4',department_id:'1')
Contain.create(id:'5',semester_id:'1',department_id:'2')
Contain.create(id:'7',semester_id:'3',department_id:'2')
Contain.create(id:'8',semester_id:'4',department_id:'2')
Contain.create(id:'9',semester_id:'1',department_id:'3')
Contain.create(id:'10',semester_id:'2',department_id:'3')
Contain.create(id:'11',semester_id:'3',department_id:'3')
Contain.create(id:'12',semester_id:'4',department_id:'3')
Contain.create(id:'13',semester_id:'1',department_id:'4')
Contain.create(id:'14',semester_id:'2',department_id:'4')
Contain.create(id:'15',semester_id:'3',department_id:'4')
Contain.create(id:'16',semester_id:'4',department_id:'4')




Tutor.create(id:'5001',tname:'tutor1',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor1@gmail.com')
Tutor.create(id:'5002',tname:'tutor2',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor2@gmail.com')
Tutor.create(id:'5003',tname:'tutor3',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor3@gmail.com')
Tutor.create(id:'5004',tname:'tutor4',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor4@gmail.com')
Tutor.create(id:'5005',tname:'tutor5',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor5@gmail.com')
Tutor.create(id:'5006',tname:'tutor6',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor6@gmail.com')
Tutor.create(id:'5007',tname:'tutor7',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor7@gmail.com')
Tutor.create(id:'5008',tname:'tutor8',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor8@gmail.com')
Tutor.create(id:'5009',tname:'tutor9',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor9@gmail.com')
Tutor.create(id:'5010',tname:'tutor10',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor10@gmail.com')
Tutor.create(id:'5011',tname:'tutor11',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor11@gmail.com')
Tutor.create(id:'5012',tname:'tutor12',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor12@gmail.com')
Tutor.create(id:'5013',tname:'tutor13',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'4',temail:'tutor13@gmail.com')
Tutor.create(id:'5014',tname:'tutor14',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'4',temail:'tutor14@gmail.com')
Tutor.create(id:'5015',tname:'tutor15',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'4',temail:'tutor15@gmail.com')
Tutor.create(id:'5016',tname:'tutor16',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'4',temail:'tutor16@gmail.com')




Tutor.create(id:'5017',tname:'tutor1',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor1@gmail.com')
Tutor.create(id:'5018',tname:'tutor2',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor2@gmail.com')
Tutor.create(id:'5019',tname:'tutor3',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor3@gmail.com')
Tutor.create(id:'5020',tname:'tutor4',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor4@gmail.com')
Tutor.create(id:'5021',tname:'tutor5',tdesg:'Associate professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor5@gmail.com')
Tutor.create(id:'5022',tname:'tutor6',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor6@gmail.com')
Tutor.create(id:'5023',tname:'tutor7',tdesg:'Professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor7@gmail.com')
Tutor.create(id:'5024',tname:'tutor8',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'1',temail:'tutor8@gmail.com')
Tutor.create(id:'5025',tname:'tutor9',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor9@gmail.com')
Tutor.create(id:'5026',tname:'tutor10',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor10@gmail.com')
Tutor.create(id:'5027',tname:'tutor11',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor11@gmail.com')
Tutor.create(id:'5028',tname:'tutor12',tdesg:'Assistant professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor12@gmail.com')
Tutor.create(id:'5029',tname:'tutor13',tdesg:'Associate professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'2',temail:'tutor13@gmail.com')
Tutor.create(id:'5030',tname:'tutor14',tdesg:'Associate professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor14@gmail.com')
Tutor.create(id:'5031',tname:'tutor15',tdesg:'Associate professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor15@gmail.com')
Tutor.create(id:'5032',tname:'tutor16',tdesg:'Associate professor',password_digest:BCrypt::Password.create('tutor123'),department_id:'3',temail:'tutor16@gmail.com')




Elective.create(id:'8001',ename:'Artificial Intelligence',semid:'1',ecredits:'4',tutor_id:'5001',department_id:'1')
Elective.create(id:'8002',ename:'Algorithm',semid:'1',ecredits:'4',tutor_id:'5002',department_id:'1')
Elective.create(id:'8003',ename:'Compiler Design',semid:'1',ecredits:'4',tutor_id:'5003',department_id:'1')
Elective.create(id:'8004',ename:'Information Security',semid:'1',ecredits:'4',tutor_id:'5004',department_id:'1')
Elective.create(id:'8005',ename:'Maths',semid:'2',ecredits:'4',tutor_id:'5005',department_id:'1')
Elective.create(id:'8006',ename:'Database Design',semid:'2',ecredits:'4',tutor_id:'5006',department_id:'1')
Elective.create(id:'8007',ename:'Computer hardware',semid:'2',ecredits:'4',tutor_id:'5007',department_id:'1')
Elective.create(id:'8008',ename:'Algorithm complexity',semid:'2',ecredits:'4',tutor_id:'5008',department_id:'1')
Elective.create(id:'8009',ename:'Theory of computation',semid:'2',ecredits:'4',tutor_id:'5009',department_id:'1')

Elective.create(id:'8014',ename:'Fluid mechanics',semid:'1',ecredits:'4',tutor_id:'5010',department_id:'2')
Elective.create(id:'8015',ename:'Engine theory',semid:'1',ecredits:'4',tutor_id:'5011',department_id:'2')
Elective.create(id:'8016',ename:'Machine Design',semid:'1',ecredits:'4',tutor_id:'5012',department_id:'2')
Elective.create(id:'8017',ename:'Motors',semid:'2',ecredits:'4',tutor_id:'5013',department_id:'2')
Elective.create(id:'8018',ename:'Mechanics',semid:'2',ecredits:'4',tutor_id:'5014',department_id:'2')
Elective.create(id:'8019',ename:'Vehicles',semid:'2',ecredits:'4',tutor_id:'5015',department_id:'2')
Elective.create(id:'8020',ename:'Structures',semid:'2',ecredits:'4',tutor_id:'5016',department_id:'2')


Elective.create(id:'8021',ename:'Structures',semid:'1',ecredits:'4',tutor_id:'5017',department_id:'3')
Elective.create(id:'8022',ename:'Mechanics',semid:'1',ecredits:'4',tutor_id:'5018',department_id:'3')
Elective.create(id:'8023',ename:'Fluid Mechanics',semid:'1',ecredits:'4',tutor_id:'5019',department_id:'3')
Elective.create(id:'8024',ename:'Bridges',semid:'2',ecredits:'4',tutor_id:'5020',department_id:'3')
Elective.create(id:'8025',ename:'Offshore',semid:'2',ecredits:'4',tutor_id:'5021',department_id:'3')
Elective.create(id:'8026',ename:'Buildings',semid:'2',ecredits:'4',tutor_id:'5022',department_id:'3')
Elective.create(id:'8027',ename:'Environmental science',semid:'2',ecredits:'4',tutor_id:'5023',department_id:'3')

Elective.create(id:'8028',ename:'Chemistry basics',semid:'1',ecredits:'4',tutor_id:'5024',department_id:'4')
Elective.create(id:'8029',ename:'Polymer chemistry',semid:'1',ecredits:'4',tutor_id:'5025',department_id:'4')
Elective.create(id:'8030',ename:'Plastics',semid:'1',ecredits:'4',tutor_id:'5026',department_id:'4')

Elective.create(id:'8031',ename:'Heat transfer',semid:'2',ecredits:'4',tutor_id:'5027',department_id:'4')
Elective.create(id:'8032',ename:'Solid fluids',semid:'2',ecredits:'4',tutor_id:'5028',department_id:'4')
Elective.create(id:'8033',ename:'Mass transfer operations',semid:'2',ecredits:'4',tutor_id:'5029',department_id:'4')
Elective.create(id:'8034',ename:'Modelling and simulations',semid:'2',ecredits:'4',tutor_id:'5030',department_id:'4')






Student.create(id:'18001',sname:'student1',j_year:'2018',email:'email1@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'1')
Student.create(id:'18002',sname:'student2',j_year:'2018',email:'email2@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'1')
Student.create(id:'18003',sname:'student3',j_year:'2019',email:'email3@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'1')
Student.create(id:'18004',sname:'student4',j_year:'2019',email:'email4@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'1')
Student.create(id:'18005',sname:'student5',j_year:'2018',email:'email5@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'2')
Student.create(id:'18006',sname:'student6',j_year:'2018',email:'email6@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'2')
Student.create(id:'18007',sname:'student7',j_year:'2018',email:'email7@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'2')
Student.create(id:'18008',sname:'student8',j_year:'2018',email:'email8@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'1',semester_id:'2')
Student.create(id:'18009',sname:'student9',j_year:'2016',email:'email9@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'1')
Student.create(id:'18010',sname:'student10',j_year:'2015',email:'email10@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'1')
Student.create(id:'18011',sname:'student11',j_year:'2018',email:'email11@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'1')
Student.create(id:'18012',sname:'student12',j_year:'2018',email:'email12@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'1')
Student.create(id:'18013',sname:'student13',j_year:'2018',email:'email13@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'2')
Student.create(id:'18014',sname:'student14',j_year:'2018',email:'email14@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'2')
Student.create(id:'18015',sname:'student15',j_year:'2018',email:'email15@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'2')
Student.create(id:'18016',sname:'student16',j_year:'2018',email:'email16@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'2',semester_id:'2')
Student.create(id:'18017',sname:'student17',j_year:'2018',email:'email17@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'1')
Student.create(id:'18018',sname:'student18',j_year:'2018',email:'email18@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'1')
Student.create(id:'18019',sname:'student19',j_year:'2015',email:'email19@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'1')
Student.create(id:'18020',sname:'student20',j_year:'2018',email:'email20@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'1')
Student.create(id:'18021',sname:'student21',j_year:'2018',email:'email21@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'2')
Student.create(id:'18022',sname:'student22',j_year:'2016',email:'email22@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'2')
Student.create(id:'18023',sname:'student23',j_year:'2018',email:'email23@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'2')
Student.create(id:'18024',sname:'student24',j_year:'2018',email:'email24@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'3',semester_id:'2')
Student.create(id:'18025',sname:'student25',j_year:'2018',email:'email25@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'1')
Student.create(id:'18026',sname:'student26',j_year:'2018',email:'email26@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'1')
Student.create(id:'18027',sname:'student27',j_year:'2018',email:'email27@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'1')
Student.create(id:'18028',sname:'student28',j_year:'2018',email:'email28@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'1')
Student.create(id:'18029',sname:'student29',j_year:'2018',email:'email29@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'2')
Student.create(id:'18030',sname:'student30',j_year:'2018',email:'email30@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'2')
Student.create(id:'18031',sname:'student31',j_year:'2018',email:'email31@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'2')
Student.create(id:'18032',sname:'student32',j_year:'2018',email:'email32@gmail.com',smobile:'9666279426',semobile:'9666279426',password_digest:BCrypt::Password.create('password1'),department_id:'4',semester_id:'2')



Request.create(id:'1',status:'2',elective_id:'8001',student_id:'18001')
Request.create(id:'2',status:'0',elective_id:'8001',student_id:'18002')
Request.create(id:'3',status:'0',elective_id:'8001',student_id:'18003')
Request.create(id:'4',status:'1',elective_id:'8001',student_id:'18004')
Request.create(id:'5',status:'2',elective_id:'8002',student_id:'18001')
Request.create(id:'6',status:'0',elective_id:'8002',student_id:'18002')
Request.create(id:'7',status:'0',elective_id:'8002',student_id:'18003')
Request.create(id:'8',status:'1',elective_id:'8002',student_id:'18004')
Request.create(id:'9',status:'2',elective_id:'8003',student_id:'18005')
Request.create(id:'10',status:'0',elective_id:'8003',student_id:'18006')
Request.create(id:'11',status:'0',elective_id:'8003',student_id:'18007')
Request.create(id:'12',status:'1',elective_id:'8003',student_id:'18008')



