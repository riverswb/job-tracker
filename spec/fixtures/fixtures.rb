company_one = Company.create(name: "Good company")
company_two = Company.create(name: "Meh company")
company_three = Company.create(name: "Bad company")

job_one = company_two.jobs.create(title: "Developer",level_of_interest: 85,city: "Denver")
job_two = company_one.jobs.create(title: "Software Engineer",level_of_interest: 90,city: "Fort Collins")
job_three = company_two.jobs.create(title: "Web Design",level_of_interest: 70,city: "Denver")
job_four = company_one.jobs.create(title: "Backend Web Developer",level_of_interest: 99,city: "Fort Collins")
job_five = company_three.jobs.create(title: "Code Monkey",level_of_interest: 3,city: "Colorado Springs")

category_1 = Category.create(title: "One")
category_2 = Category.create(title: "Two")
category_3 = Category.create(title: "Three")
