# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


u1= User.create(name: "Marthyn", last_name: "Jovanovic", telephone: "+56973829846", role: 0, email: "mjovanovic@gmail.com", password: "123456")

u2= User.create(name: "Susuka", last_name: "Nakamoto", telephone: "+56910392403", role: 1, email: "snakamoto@gmail.com", 
password: "123456")

u3= User.create(name: "Moa", last_name: "Kikuchi", telephone: "+5690982758", role: 2, email: "mkikuchi@gmail.com", 
password: "123456")


p1= Project.create(name: "Proyecto 1", description: "Primer proyecto para probar el funcionamiento de la aplicación")

g1= Group.create(name: "Grupo 1", description: "Primer grupo para probar el funcionamiento de la aplicación", project_id: p1.id)

ug1= UserGroup.create(user_id: u1.id, group_id: g1.id)
ug2= UserGroup.create(user_id: u2.id, group_id: g1.id)
ug3= UserGroup.create(user_id: u3.id, group_id: g1.id)

# Create some tasks associated with the user and group
t1 = Task.create(name: "Task 1", description: "First task for testing purposes", status: 0, start_date: Date.today, end_date: Date.today + 7.days, progress: 0, user_id: u1.id, group_id: g1.id)
t2 = Task.create(name: "Task 2", description: "Second task for testing purposes", status: 1, start_date: Date.today, end_date: Date.today + 14.days, progress: 100, user_id: u1.id, group_id: g1.id)
t3 = Task.create(name: "Task 3", description: "Third task for testing purposes", status: 0, start_date: Date.today, end_date: Date.today + 21.days, progress: 50, user_id: u1.id, group_id: g1.id)


p t1
p t2