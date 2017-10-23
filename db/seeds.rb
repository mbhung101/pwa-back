# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

patients = User.create([{name:"Sick Bob",phone:"+12485309392",dob:"01/30/1921",pca:"p",online:"false"},{name:"Aalap Majmudar",phone:"+15455555555",dob:"11/20/1981",pca:"p",online:"false"},{name:"Andy Doe",phone:"+15455555555",dob:"11/20/1982",pca:"p",online:"false"}])
clinicans = User.create({name:"Dr. Matt",phone:"+12485309392",dob:"01/30/1921",pca:"c",online:"false",password:"a4"})

chatrooms = Chatroom.create([{name:"Sick Bob's Chatroom"},{name:"Aalap's Chatroom"}])

userchats = Userchat.create([{user_id:1,chatroom_id:1},{user_id:2,chatroom_id:2},{user_id:4,chatroom_id:1},{user_id:4,chatroom_id:2}])

messages = Message.create([{message:"I ate a fork doctor!", sms: "true", user_id:1, chatroom_id:1},{message:"You're not very smart", sms: "false", user_id:4, chatroom_id:1},{message:"I need help with my ED", sms: "false", user_id:2, chatroom_id:2}])
