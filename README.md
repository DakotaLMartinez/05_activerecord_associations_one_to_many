# ActiveRecord Associations - One to Many

### Learning Goals:
- [] Recognize the connection between the primary key - foreign key relationship and ActiveRecord associations
- [] Implement a one to many association between two models
- [] Implement a one to one association between two models
- [] Read and understand documentation on ActiveRecord association methods

---

## Important Resources for Today
- [RailsGuides on ActiveRecord](https://guides.rubyonrails.org/v5.2/active_record_basics.html)
- [RailsGuides on ActiveRecord Migrations](https://guides.rubyonrails.org/v5.2/active_record_migrations.html)
- [RailsGuides for ActiveRecord Query Interface](https://guides.rubyonrails.org/v5.2/active_record_querying.html)
- [RailsGuides for ActiveRecord Associations](https://guides.rubyonrails.org/v5.2/association_basics.html)
- [Rails documentation (section on ActiveRecord)](https://api.rubyonrails.org/v5.2.6/)
- [APIDock has_many](https://apidock.com/rails/ActiveRecord/Associations/ClassMethods/has_many)
- [APIDock belongs_to](https://apidock.com/rails/v5.2.3/ActiveRecord/Associations/ClassMethods/belongs_to)
- [VSCode Sqlite Extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)

## Topics

### What is the difference between a primary key and a foreign key?

...
### If we have a one to many relationship between two tables, which table gets the foreign key?

...
### Association methods are which kind of methods–instance methods or class methods?

...

## Demonstration

- Create `Walk` model and associated `walks` table
- open up `./bin/console` and do create a couple of dogs.

## Task 1

1. Create a `computers` table with the following columns:

- brand (string)
- model (string)
- screen_size (float)
- model_year (integer)
- asleep (boolean)
- last_backed_up_at (datetime)

2. In `lib/computer.rb`, create a `Computer` class that inherits from `ActiveRecord::Base` 

3. In `lib/exercises.rb` fill in the `first_computer` and `second_computer` methods so that they both return computers with `brand`, `model`, `screen_size` and `model_year` properties assigned.

### Discussion Questions
#### How did you create the computers table? 

...

#### Why do we write database changes to a file instead of using SQL to update the structure of the database?

...
#### How is the Computer class connected to the computers table?

...

#### Why do migration file names start with a number?

...

#### What else is important about migration file names?

...

#### What is an ORM and why do we need/want one?

...

#### What is rake and what is it used for?

## Demonstration - Updating and Deleting Dogs

For this, let's open up `./bin/console` and attempt the following:
### Find an existing `dog` 

```rb
```
### Update the dog's age

```rb
```
### Delete the dog

```rb
```
### Try to find the dog again to demonstrate it has been deleted

```rb
```


## Task 2

1. Define a `back_up` method within the computer class that updates the `last_backed_up_at` attribute of the computer to the current date and time.

2. Define a `sleep` method within the computer class that updates the `asleep` attribute of the computer to `true`.

3. Define a `wake_up` method within the computer class that updates the `asleep` attribute of the computer to `false`.

4. Define a `backed_up` method within the computer class that returns all of the computers that have been backed_up.


### What is the main purpose of ActiveRecord in our application?

...
### What would we have to do in our application if we didn't have something like ActiveRecord?

...
### What are some potential downsides of using ActiveRecord?

...