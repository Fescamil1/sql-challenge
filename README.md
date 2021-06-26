# sql-challenge Employee Database: A Mystery in Two Parts

Goal is to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

#### Data Modeling

Inspected the provided CSVs and sketch out an ERD of the tables. 

#### Data Engineering

* Used the information to create a table schema for each of the six CSV files. 

* Imported each CSV file into the corresponding SQL table in the same order that the tables were created.

#### Data Analysis

Query the following from the created database

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

   ![image-20210625235733580](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210625235733580.png)

2. List first name, last name, and hire date for employees who were hired in 1986.

   ![image-20210626000226942](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626000226942.png)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

   ![image-20210626001622120](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626001622120.png)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

   ![image-20210626002734856](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626002734856.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

   ![image-20210626003026536](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626003026536.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

   ![image-20210626003547945](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626003547945.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

   ![image-20210626003913461](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626003913461.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

   ![image-20210626004507944](C:\Users\franc\AppData\Roaming\Typora\typora-user-images\image-20210626004507944.png)