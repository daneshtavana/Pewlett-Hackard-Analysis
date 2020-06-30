-- Table labeled "current_emp" has retired employee information  
SELECT * FROM current_emp;
--
-- Challenge Problem first part is to add title 
-- Join "current_emp" with "titles"
--
SELECT ce.emp_no,
	ce.first_name,
    ce.last_name,
	ce.from_date,
	t.title
INTO retiring_emp_titles
FROM current_emp as ce
LEFT JOIN titles as t
ON ce.emp_no = t.emp_no;
--
SELECT * FROM retiring_emp_titles;
--
-- Challenge Problem second part is to add salary 
-- Join previous results (Join "current_emp" with "titles") with "salaries"
SELECT ret.emp_no,
	ret.first_name,
    ret.last_name,
	ret.title,
	ret.from_date,
	s.salary
INTO retiring_emp_titles_salaries
FROM retiring_emp_titles as ret
LEFT JOIN salaries as s
ON ret.emp_no = s.emp_no;
--
SELECT * FROM retiring_emp_titles_salaries;
--
-- Code to remove duplicates
SELECT K.emp_no, K.first_name, K.last_name, K.title, K.from_date, K.salary
INTO final_retiring_emp_list
FROM
(SELECT emp_no, first_name, last_name, title, from_date, salary
      ,ROW_NUMBER() OVER (PARTITION BY 
						  emp_no
                          ORDER BY
                          emp_no) RowNumber 
FROM retiring_emp_titles_salaries) AS K
WHERE K.RowNumber = 1
