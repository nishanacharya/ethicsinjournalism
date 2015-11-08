# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(name: 'Michelle', email: 'msisti@brandeis.edu', password: '12345678', admin: 'true')
    User.create(name: 'Nishan', email: 'acharyan@brandeis.edu', password: '12345678', admin: 'true') 
    User.create(name: 'Ken', email: 'kharsch@brandeis.edu', password: '12345678', admin: 'false') 
    
    Assignment.create(title: 'Assignment 1', description: 'Assignment Description 1', deadline: '30/12/2015 17:00')
    Assignment.create(title: 'Assignment 2', description: 'Assignment Description 2', deadline: '30/12/2015 17:00')
    Assignment.create(title: 'Assignment 3', description: 'Assignment Description 3', deadline: '30/12/2015 17:00')
    
    Post.create(headline: "Post 1", draft1: "Draft 1-1", draft2: "Draft2-1", user_id: "1", assignment_id: "1")
    Post.create(headline: "Post 2", draft1: "Draft 1-2", draft2: "Draft2-2", user_id: "2", assignment_id: "2")
    Post.create(headline: "Post 3", draft1: "Draft 1-3", draft2: "Draft2-3", user_id: "3", assignment_id: "3")
    
    