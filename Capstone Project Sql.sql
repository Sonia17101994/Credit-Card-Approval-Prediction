---- 1) Group the customers based on their income type and find the average of their annual income.
		SELECT type_income as Income_Type, round(avg(annual_income),2) as Avg_Annual_Income
        FROM credit
        GROUP BY type_income;

---- 2) Find the female owners of cars and property.
		 SELECT count(gender) as Female_Owner
         FROM credit 
         WHERE gender = 'F' and car_owner = 'Y' and propert_Owner = 'Y';
         
---- 3) Find the male customers who are staying with their families.
		 SELECT count(gender) as Male_Customer
         FROM credit 
         WHERE gender = 'M' and family_members > 1;
         
---- 4) Please list the top five people having the highest income.
		 SELECT distinct annual_income 
         FROM credit 
         ORDER BY annual_income desc
         Limit 5;
         
---- 5) How many married people are having bad credit?
		SELECT count(*) as Married_People_with_bad_Credit
        FROM credit 
        WHERE marital_status = 'Married' and label = 1;
        
---- 6) What is the highest education level and what is the total count?
		 SELECT education , count(*) as Total_count
         FROM credit 
		 WHERE education = 'Academic Degree';
         
---- 7) Between married males and females, who is having more bad credit?
		 SELECT sum(Case When gender = 'M' then 1 else 0 end) as Married_Male,
	            sum(Case When gender = 'F' then 1 else 0 end) as Married_Female
		 FROM credit
         WHERE marital_status = 'Married' and label = 1;
		
         
