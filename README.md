<a name="to_lift"><h2>REST API "Films"</h2></a>

#### Test task. Ruby On Rails application.

#### List of contents
  - *[Task](#task)*
  - *[About the database](#about_the_database)*
  - *[About the API](#about_the_api)*
  - *[About additional sorting functions](#about_additional_sorting_functions)*
  - *[About additional filtering functions](#about_additional_filtering_functions)*
  - *[How to use](#use)*
  - *[Features, implementation requirements](#requirements)*
  - *[System dependencies](#system_dependencies)*

<a name="task"><h4>Task</h4></a>

The application for storing a database of movies and providing a REST API for working with them.

[Up](#to_lift)

<a name="about_the_database"><h4>About the database</h4></a>

The following information should be available about the film:

  - Name in original language
  - Localized name
  - Year of issue
  - Rating from 0 to 10
  - Text description
  - Image
  - Production countries
  - Genres

[Up](#to_lift)

<a name="about_the_api"><h4>About the API</h4></a>

The following features must be present in the API:

  - Making a film
  - Film editing
  - Delete film
  - Obtaining detailed information about the film
  - Getting a list of films

[Up](#to_lift)

<a name="about_additional_sorting_functions"><h4>About additional sorting functions</h4></a>

Provide the ability to sort movies by one of the following fields:

  - Year of issue
  - Rating

[Up](#to_lift)

<a name="about_additional_filtering_functions"><h4>About additional filtering functions</h4></a>

Provide the ability to filter movies by the following fields:

  - Name
  - Year of issue
  - Country of Origin
  - Rating
  - List of genres

[Up](#to_lift)

<a name="use"><h4>How to use</h4></a>

To install you will need a library manager. Run
following commands:

  + clone the program from the repository:

    `git clone https://github.com/occmium/films_api.git`

  + go to the program folder:

    `cd films_api`

  + to install Bundler:

    `gem install bundler`

  + install all of the required gems:

    `bundle install`

  + start the application server:

    `bundle exec rails s`

[Up](#to_lift)

<a name="requirements"><h4>Features, implementation requirements</h4></a>

You don't need to implement the client part - just the API methods.

Use any database you know as a Database Management System - from MySQL to MongoDB.

[Up](#to_lift)

<a name="system_dependencies"><h4>System dependencies</h4></a>

program|version
:---:|:---:
Ruby|2.7.0
Rails|6.0.3.1
PostgreSQL|10.12
somethingelse|surprise

[Up](#to_lift)
