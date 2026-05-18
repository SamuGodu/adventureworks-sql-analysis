# Exercises Part 1
## Single table queries
### In this part, we will retrieve and filter data.

### Note: To write correct queries, you should first familiarize yourself with the data stored in the tables.

#### Exercise 1: Select the job title of all male employees who are not married.
As the question ask specifically for the employees who are not married, it is necessary to consider other option and not only 'S' = single. Therefore the '!=' method is used.

#### Exercise 2: Select employees whose pay rate is 50 or more.
We need to specify the value using quotation marks, and it can equally query between "integers" and "floats"

#### Exercise 3: Select all employees who joined new departments in 2008
When requesting between a certain date as in this example, you can't only use the '=' equal sign as it only conisders the first day of the year and you cant use a comparison between '2008' and '2009' as it will consider the first day of the year as well.

#### Exercise 4: Select departments whose names match the pattern
We use the 'LIKE' function as we are searching ofr matches of the text pattern. We also included the '%' wildcard to look for any number of characters

#### Exercise 5: Select departments that belong to certain groups
The 'IN' keyword is used to consider all available options that contains our restricion of group names.