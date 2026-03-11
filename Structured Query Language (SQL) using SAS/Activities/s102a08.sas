***********************************************************;
*  Activity 2.08                                          *;
*  1) Examine and run the query. View the results. Which  *;
*     month has the highest value for MedianSpent?        *;
*  2) Replace the MONTH function with the QTR function.   *;
*     Change the name of the Month column to Qtr. Run the *;
*     query. What is the error?                           *;
*  3) Replace Month in the GROUP BY clause with Qtr. Run  *;
*     the query. Which quarter has the highest value for  *;
*     MedianSpent?                                        *;
***********************************************************;

proc sql;
select QTR(datepart(DateTime)) as Qtr, 
       Median(Amount) as MedianSpent format=dollar16.
    from sq.transaction
    group by Qtr;
quit;












































