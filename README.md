

# Reza-Mirjahanian 

#### How run tests:

    bundle exec rspec
    ruby bin/rails test


#### Important files:
    app/services/cost_service.rb
    app/controllers/calculate_controller.rb
    
    test/services/cost_service_test.rb
    spec/services/cost_service_spec.rb


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



#### Done:
- ✅ Fluorescent tubes were broken in 1 year.
- ✅ Money do fluorescent tubes cost the University.
- ✅ Add unit tests.

#### Todo:
- 💡 Improve testing (E2E, ...)
- 💡 Add a GitHub Actions workflow.
- 💡 Add Swagger UI.
- 💡 Improve validation and naming convention.
- 💡 Include API versioning, rate-limiting, linter, ...

