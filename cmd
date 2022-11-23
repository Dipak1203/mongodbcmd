=--------------- In this text file contains all the cmd  for mongodb --------------------------=
/*
Author : Dipak Kumal 
Date : 2079-08-01
github: https://dipak1203.github.io/react-portfolio
*/

% Update Date
### 2079-08-02


% Introduction about Mongodb
   Mongodb is document database. It stores data in a type of JSON format called
   BSON.
   A record in Mongodb is a document,which is a data structure composed of key value
   pairs similar to the structure of JSON objects.

% A Mongodb Document
   Records in a mongodb database are called documents, and the field values may  
   include numbers, strings booleans, arrays or even nested document.

% Example 
   {
    id:1,
    name:"Dipak",
    address:"Rapti-2",
    field:"Programmer",
    age:20
   }

   Mongodb is a document database and can be install locally or hosted in cloud.

% SQL VS Document Database
   SQL(Structure Query Language) databases are considered relational databases. 
   They store related data in separate tables. When data is needed, it is queried
   from multiple tables to join the data back together.

   Mongodb is a document database which is often referred to as a non-relational
   databases. It means that relational data is stored differently. A better way
   to refer to it is as a non-tabular database.

   Mongodb stores data in flexible documents, instead of having multiple tables
   you can simply keep all of your related data together. This makes reading your 
   data very fast.







% Creating/Switching Database 
    use <databaseName>

% Searching Database
  show dbs 

% Deleting Database 
  db.dropDatabase()

% Collection
  db.CreateCollection(<collection_Name>) ==== Creating Collection
  db.<collection_name>.drop() ===== Delete collection
  show collections ===== showing collections

% Documentation
  db.insertOne({key:value}) ===== Inserting one Document
  db.insertMany([{key:value}]) ===== Inserting Many Document
  db.<collection_name>.find() ==== show all document in the collection
  db<collection_name>.find().pretty() ==== show all document in the collection with pretty form
  db.<collection_name>.find({key:value}) ==== searching the document
  db.<collection_name>.findOne({key:value}) ===== searching one document
  db.<collection_name>.update({key:value},{$set:{key:value},{key:value}}) ==== Updating the document or inserting new document
  db.<collection_name>.deleteOne({key:value}) ====== Deleting One document
  db.<collection_name>.deleteMany({key:{$in:[value,value,value,value]}}) ===== Deleting Multiple Value in the document


% Operator 
db.<collection_name>.find({key:{$eq:'value'}}) ======= It shows all the equal value 
db.<collection_name>.find({key:{$gt:10}}) ===== Greater than 10 values
db.<collection_name>.find({key:{$gte:10}}) ====== Greater than or Equal to values
db.<collection_name>.find({key:{$lt:10}}) ======= Less than 10 values
db.<collection_name>.find({key:{$lte:10}}) ====== Less than or Equal to values
db.<collection.name>.find({key:{$ne:10}}) ====== Not Eqaul to 
db.<collection_name>.find({$and:[{key:{$eq:pair}},{key:{$eq:pair}}]}) ==== Both condtion should be match
db.<collection_name>.find({$or:[{key{$eq:pair}},{key:{$eq:pair}}]}) ==== One condition should be match


% Insert Multiple document
   for(let i = initial; i<numbers; ++/--){
        db.<collection_name>.insert({key:value})
   } 
  %  example
  for(let i = 1; i<5000; i++){
    db.products.insert({name:'product' + 1,price:i*2})
  }


% Indexes

% Creating Index
    db.<collection_name>.createIndex({name:1})

%  View Index
    db.<collection_name>.getIndexes()

%  View execution time
    db.<collection_name>.find({key:value}).explain('executionStats')

% Drop Index
    db.<collection_name>.dropIndexes({<created Index field>})





  


