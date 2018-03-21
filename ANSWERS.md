# Q0: Why is this error being thrown?
We don't have a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
These Pokemon do not have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that when clicked makes a PATCH HTTP request to the capture path we defined in routes.rb with a parameter of the Pokemon's id.

# Question 3: What would you name your own Pokemon?
Boba

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in damage_path, which needed the id of the Pokemon I was damaging

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The flash is a key value mapping; we are setting the value of the flash message in the case that there's an error to the error message given by the pokemon object.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
