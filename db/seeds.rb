# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

## destroy_all before starting.
Company.destroy_all
Job.destroy_all
User.destroy_all
Companyuser.destroy_all

# companies
leafly = Company.create(name: "Leafly")
nt = Company.create(name: "Namaste Technologies")
cannimed = Company.create(name: "CanniMed")
ph = Company.create(name: "Privateer Holdings")
goodship = Company.create(name: "Goodship")
aphria = Company.create(name: "Aphria Inc.")
tilray = Company.create(name: "Tilray")
wikileaf = Company.create(name: "WikiLeaf Technologies")

# jobs
Job.create(title: "AI Engineer", location: "Seattle, Washington", salary: 115000, description: "AI engineer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: leafly)
Job.create(title: "Data Visualization Engineer", location: "Toronto, Canada", salary: 105000, description: "Data visualization position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: nt)
Job.create(title: "Software Developer", location: "Saskatoon, Canada", salary: 100000, description: "software Developer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: cannimed)
Job.create(title: "Software Developer", location: "Seattle, Washington", salary: 85000, description: "software Developer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: ph)
Job.create(title: "DevOps manager", location: "Seattle, Washington", salary: 80000, description: "DevOps manager position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: ph)
Job.create(title: "DevOps manager", location: "Toronto, Canada", salary: 90000, description: "DevOps manager position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: tilray)
Job.create(title: "Fullstack Developer", location: "Seattle, Washington", salary: 85000, description: "Fullstack Developer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: wikileaf)
Job.create(title: "Fullstack Developer", location: "Toronto, Canada", salary: 80000, description: "Fullstack Developer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: nt)
Job.create(title: "Sr. Division Leader", location: "Leamington, Canada", salary: 165000, description: " knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: aphria)
Job.create(title: "Sr. Warehouse Ops Manager", location: "Seattle, Washington", salary: 185000, description: "warehouse management, Programming languages is a plus. knowing database visualization.", company: goodship)
Job.create(title: "Jr. BudTender", location: "askatoon, Saskatchewan, Canada", salary: 65000, description: "overseering development of leaves.", company: cannimed)
Job.create(title: "Jr. Web Developer", location: "Seattle, Washington", salary: 70000, description: "software engineer position, knows JS/Ruby/Python/SQL/Data Visualization/ Machine Learning/AI.", company: leafly)

# Users
jodyhall = User.create(username: "jodyhall", email: "jhall@goodship.com", password: "abc123")
cervini = User.create(username: "jcervini", email: "jcervini@aphria.ca", password: "abc123")
brendank = User.create(username: "brendank", email: "brendank@tilray.com", password: "abc123")
dnelson = User.create(username: "dnelson", email: "dnelson@wikileaf.com", password: "abc123")
mblue = User.create(username: "mblue", email: "mblue@privateerholdings.com", password: "abc123")
brentz = User.create(username: "brentz", email: "brentz@cannimed.ca", password: "abc123")
sdoll = User.create(username: "sdollinger", email: "sdollinger@namastetechnologies.com", password: "abc123")
svickers = User.create(username: "svickers", email: "svickers@leafly.com", password: "abc123")

# Companyusers
Companyuser.create(user: jodyhall, company: goodship)
Companyuser.create(user: cervini, company: aphria)
Companyuser.create(user: brendank, company: tilray)
Companyuser.create(user: dnelson, company: wikileaf)
Companyuser.create(user: mblue, company: ph)
Companyuser.create(user: brentz, company: cannimed)
Companyuser.create(user: sdoll, company: nt)
Companyuser.create(user: svickers, company: leafly)

puts "seeded all"