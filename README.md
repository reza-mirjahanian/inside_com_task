

# Reza-Mirjahanian Inside.com task

#### Request(GET):

    http://localhost:3000/api/calculate_cost

#### Response:


    {
        "total_required_fluorescent_units": 79,
        "total_required_fluorescent_tubes": 316,
        "total_required_fluorescent_tubes_cost": 2212
    }


#### Info:
- 📌 Ruby on Rails 7.1.2
- 📌 There are 36 or 37 weeks in a 9-month period. I have chosen 36.".
- 📌 Usually, we pass arguments to an API. I have hardcoded them in the controller for simplicity.
- 📌 Generating a truly random number is difficult.
- 📌 There is no consideration for reusing fluorescent tubes. We throw them away.
- 📌


#### Done:

- ✅ Fluorescent tubes were broken in 1 year.
- ✅ Money do fluorescent tubes cost the University.

#### Todo:


- 💡 Includes unit tests.
- 💡 Improve testing (E2E, ...)
- 💡 Includes a GitHub Actions workflow.
- 💡 Improve Swagger UI.
- 💡 Improve validation and naming convention.
- 💡 Includes API versioning, rate-limiting, linter, ...

## Task

##### What
The test is to write a simulation algorithm.

##### How
Use the technology discussed in the interview for creating the solution.
Frontend - Typescript
Backend - Ruby

##### Problem
In a University, there is a classroom, in that classroom, there are 4 fluorescent tube units, each unit contains 4 fluorescent tubes.

The classroom is used 15 hours a day, 5 times a week, 9 months a year.

Every fluorescent tube works for a fixed amount of hours, that amount is returned by a function called "rand()" that returns an integer number from 100 to 200 that represents the number of hours that the fluorescent tube will work before breaking.

Once 2 fluorescent tubes fail in a single unit, you should replace all 4 tubes. Each fluorescent tube costs 7 $USD.

##### The algorithm should print:
1. How many fluorescent tubes were broken in 1 year in that classroom?
2. How much money do fluorescent tubes cost the University per year per
   classroom?