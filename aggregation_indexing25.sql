-- 25) Implement aggregation and indexing with suitable example in mongodb.    

show dbs 


use customer 

db.cust_table.insert({Item_id:1,Cust_Name:"Ram",Product:"Milk",Amount:40}); 

db.cust_table.insert({Item_id:2,Cust_Name:"Ram",Product:"Parle_G",Amount:50}); 

db.cust_table.insert({Item_id:3,Cust_Name:"Mohan",Product:"Lays Chips",Amount:40}); 

db.cust_table.insert({Item_id:4,Cust_Name:"Shivam",Product:"Mentos",Amount:10}); 

db.cust_table.insert({Item_id:5,Cust_Name:"Mohan",Product:"Maggie",Amount:60}); 



db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$sum:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$avg:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$min:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$max:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$first:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$last:"$Amount"}}}); 

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$psuh:"$Amount"}}}); 



db.cust_table.createIndex({'Item_id':1}) 

db.cust_table.createIndex({'Item_id':2}) 

db.cust_table.createIndex({'Item_id':4}) 

db.cust_table.getIndexes() 

db.cust_table.dropIndex({'Item_id':4}) 

db.cust_table.dropIndex({'Item_id':1}) 

db.cust_table.getIndexes()
