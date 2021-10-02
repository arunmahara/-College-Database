SQL> SELECT p.Product_name AS "Product Name",
  2  (SELECT SUM(Quantity) FROM Order_Details
  3  WHERE Product_id = p.ProductCode) AS "Total Sales"
  4  FROM Product p;

Product Name    Total Sales                                                     
--------------- -----------                                                     
Noodles                   4                                                     
Rice                      5                                                     
Coffee                   10                                                     
Oil                       8                                                     
Biscuits                  2                                                     
Dishwasher                3                                                     

6 rows selected.

SQL> spool off
