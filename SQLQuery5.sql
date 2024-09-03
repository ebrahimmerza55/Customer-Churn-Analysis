CREATE VIEW vm_ChurnData AS 
     SELECT * FROM prod_Churn WHERE Customer_Status IN ('Churned' , 'Stayed')



CREATE VIEW vm_JoinedData AS 
      SELECT * FROM prod_Churn WHERE Customer_Status = 'Joined'
  