use Artsofte

CREATE PROCEDURE AddEmployee @Name nvarchar(30),@SurName nvarchar(30),@Age int, @Gender nvarchar(30),@DepartmentId int,@ProgrammingLanguageId int
As
insert into Employees
values(@Name,@SurName ,@Age , @Gender,@DepartmentId ,@ProgrammingLanguageId )
Go
EXEC AddEmployee @Name ='test',@SurName='test1',@Age=29,@Gender='kisi',@DepartmentId=1,@ProgrammingLanguageId=1;
drop procedure AddEmployee
Create Procedure GetDepartments
As
Select * from Departments 
Go
EXEC GetDepartments


Create Procedure ProgramLanguage @DepartmentId int
As
Select p.Id,p.DepartmentId,p.Name from ProgramingLanguages as p where DepartmentId=@DepartmentId
Go
drop procedure ProgramLanguage
EXEC ProgramLanguage @DepartmentId=2
--Create Procedure GetEmployees 
--As
--SELECT *
--FROM ((Employees
--INNER JOIN Departments ON Employees.DepartmentId = Departments.Id)
--INNER JOIN ProgramingLanguages ON Employees.ProgramingLanguageId = ProgramingLanguages.Id);
--Go


drop procedure GetEmployees

exec GetEmployees



EXEC GetEmployees 





Create Procedure UpdateEmployeeById @Id int,@Name nvarchar(30),@SurName nvarchar(30),@Age bit, @Gender nvarchar(30),@DepartamentId int,@PrograminLanguageId int
As
Update Employees
set 
Name=@Name,
Surname=@SurName,
Age=@Age,
Gender=@Gender,
DepartmentId=@DepartamentId,
ProgramingLanguageId=@PrograminLanguageId
where Id=@Id
GO

EXEC UpdateEmployeeById @Id=1, @Name ='Hasan',@SurName='Nuruzade',@Age=19,@Gender='Kisi',@DepartamentId=1,@PrograminLanguageId=1;

Create Procedure DeleteEmployee @Id int
As
Delete from Employees
where Id=@Id
Go

EXEC DeleteEmployee @Id=5
