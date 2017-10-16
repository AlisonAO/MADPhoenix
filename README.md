# Project 2 - MAD Phoenix
Sparta Project_2 - “ShowMe” 

## Description 

This web application is a showcase of Sparta Global projects produced by all Spartans during their time and after compeleting the academy. All technologies learnt in the first 5 weeks of training were used to create this application. This application follows all the RESTful standards and was created following the SCRUM agile methodology. 

## Features and Implementation 
The web app can perform all of the basic CRUD actions (Create, Read, Update, Delete). 
Show page with more information about specific project.
Also implemented an admin role that allows for the approval of projects before being visible to all. 
A search bar that allows for filtering of projects based on what you search. 
Image hosting on the cloud using AWS (s3).
SigIn/SignOut with profile creation.


## How to get it running 
Click the clone button, and use the link provided to git clone the repository.  
Run a ```bundle install``` to download all the necessary gems.  
Run ```rake db:create```, ```rake db:migrate```, ```rake db:seed```.  
Run "rails s" to start your server.  
Go to your ```localhost:3000```, to use the project


## Technologies Used

HTML 5  
CSS  
Javascript (jQuery)  
Ruby  
Ruby on Rails 

### Ruby Gems 

* devise -- This gem was used to create different user accounts, with password protection, as well as creating an admin account with additional privileges.

* redcarpet -- This gem was used to ensure that users could write the description and readme section of their projects using Markdown syntax, and the gem would render it accordingly. 

* paperclip & aws-sdk -- A file management gem, which allows the user to upload files from local storage onto the local server. The aws-sdk gem, allowed communication to Amazon Web Services, to host the file in an S3 bucket online.


### Contributors 

Alison Opeloyeru 

Michael Ash 
 
Dom Jones     
