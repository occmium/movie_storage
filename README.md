<a name="to_lift"><h2>REST API "Movie storage"</h2></a>

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

    *example with "cURL"*

    ```
    curl --location --request POST 'http://localhost:3000/films' \
    --form 'film[rating]=1' \
    --form 'film[image]=http://example.com/name' \
    --form 'film[name_local]=Name Local' \
    --form 'film[description]=Description' \
    --form 'film[name]=Name' \
    --form 'film[year]=2001' \
    --form 'film[countries_attributes[][name]]=Country 1' \
    --form 'film[countries_attributes[][name]]=Country 2' \
    --form 'film[genres_attributes[][name]]=Genre 1' \
    --form 'film[genres_attributes[][name]]=Genre 2'
    ```

  - Film editing
    
    *example with "cURL"*

    ```
    curl --location --request PATCH 'http://localhost:3000/films/1' \
    --form 'film[rating]=10' \
    --form 'film[image]=http://example.com/name_changed' \
    --form 'film[name_local]=Name Local Changed' \
    --form 'film[description]=Description Changed' \
    --form 'film[name]=Name Changed' \
    --form 'film[year]=2010' \
    --form 'film[countries_attributes[][name]]=Country Changed' \
    --form 'film[countries_attributes[][name]]=Country 2' \
    --form 'film[genres_attributes[][name]]=Genre Changed' \
    --form 'film[genres_attributes[][name]]=Genre 2'
    ```

  - Obtaining detailed information about the film

    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films/1'`

  - Getting a list of films

    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?page=2'`

  - Delete film

    *example with "cURL"*

    `curl --location --request DELETE 'http://localhost:3000/films/1'`


[Up](#to_lift)

<a name="about_additional_sorting_functions"><h4>About additional sorting functions</h4></a>

Provide the ability to sort movies by one of the following fields:

  - Year of issue
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?sort_by=year&sort_order=desc&page=2'`
  
  - Rating
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?sort_by=rating&sort_order=asc'`
  

[Up](#to_lift)

<a name="about_additional_filtering_functions"><h4>About additional filtering functions</h4></a>

Provide the ability to filter movies by the following fields:

  - Name
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?name=Name_1'`
  
  - Year of issue
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?year=2001'`
  
  - Country of Origin
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?countries=Country_1,country_2'`
  
  - Rating
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?rating=1'`
  
  - List of genres
    
    *example with "cURL"*

    `curl --location --request GET 'http://localhost:3000/films?genres=Genre_1,genre_2'`
  
[Up](#to_lift)

<a name="use"><h4>How to use</h4></a>

To install you will need a library manager. Run
following commands:

  + clone the program from the repository:

    `git clone https://github.com/occmium/movie_storage.git`

  + go to the program folder:

    `cd movie_storage`

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
