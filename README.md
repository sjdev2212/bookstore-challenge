# Bookstore

> ROR app to add books as an admin or browse books as a user
>
> Admin credentials
>
> user:  admin@gmail.com
>
> password: 313131
>
> The administrator can add, delete, update books authors and publisher.  The regular user can sign up or login and browse book.
>
> Athentication using Devise.
>
> Authorization using Cancancan

 Application buit with Ruby on Rails


## Api Endpoints

Get all available books

[https://bookstore-0c0a.onrender.com/api/books](https://bookstore-qou1.onrender.com/api/books)

Get 1 book by id

[https://bookstore-0c0a.onrender.com/api/book/:id](https://bookstore-qou1.onrender.com/api/book/5)

Post  book (create book)

[https://bookstore-0c0a.onrender.com/api/book](https://bookstore-qou1.onrender.com/api/books)s

 Put  Update book

[https://bookstore-0c0a.onrender.com/api/books/:id](https://bookstore-qou1.onrender.com/api/books/:id)

Delete book

[https://bookstore-0c0a.onrender.com/api/book](https://bookstore-qou1.onrender.com/api/books/:id)s/:id

Pagination

[https://bookstore-0c0a.onrender.com/api/books?page=1&amp;per_page=5](https://bookstore-0c0a.onrender.com/api/books?page=1&per_page=5])

Filter books by Titles

Get

[https://bookstore-0c0a.onrender.com/api/books/filter_title?title=norwegian](https://bookstore-qou1.onrender.com/api/books/filter_title?title=norwegian)

Filter by price range

Get

[https://bookstore-0c0a.onrender.com/api/books/filter_price?min_price=1&amp;max_price=10](https://bookstore-qou1.onrender.com/api/books/filter_price?min_price=1&&max_price=10)

Filter by author name

Get

[https://bookstore-0c0a.onrender.com/api/books/filter_author?author=kin](https://bookstore-qou1.onrender.com/api/books/filter_author?author=king)g

## Built With

- Major languages: Ruby
- Frameworks: ROR
- Gems: devise, bigdecimal, will_paginate, cancancan,

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You need to have followings installed in your local machine:

- Ruby '3.1.2'
- `Postgresql`
- `Rails 7`

### Setup

To setup the project in your local, in the repo page:

- 
- Open terminal of path you want to install project and run this command:
  `git clone  https://github.com/sjdev2212/bookstore-challenge.git`
- `cd bookstore/`
- `bundle install`
- `bin/rails db:create`
- `bin/rails db:migrate`

## Instruction on the usage

- Run the following comands in your command line:
- `rails s`
- `open any browser`
- `type "localhost:3000"`
- `enjoy the app`

## Author

👤 **Anibal Amoroso**

- [GitHub:](https://github.com/sjdev2212)
- [LinkedIn](https://linkedin.com/in/anibalamoroso/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sjdev2212/bookstore-challenge/issues).

## Show your support

Give a ⭐️ if you like this project!
