# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Book.create(
    title: "It",
    author_name: "Stephen King",
    isbn: "9780670813025",
    date_of_publication: "1986-09-15",
    review: "This story is an undertaking to read at over 1000 pages, but I don't feel like the details are filler as some 
    feel or too much. Stephen King is super detailed in all of his stories. IT was a beautiful story about childhood, facing fears, life long love and friendships, and finding inner strength and c
    ourage.",
    price: 12.99,
    author_id: 1,

 )
     Book.create(
    title: "The Shining",
    author_name: "Stephen King",
    isbn: "9780385121675",
    date_of_publication: "1977-01-28",
    review: "The Shining is one of King's better books, possibly one of his best. It's quintessential King. The horror is both supernatural and human, there is quite a bit of subtext, and (unlike many of King's novels) it actually has something like a decent ending.",
    price: 15.99,
    author_id: 1,
    )
    Book.create(
    title: "The Stand",
    author_name: "Stephen King",
    isbn: "9780385199574",
    date_of_publication: "1978-10-03",
    review: "The Stand is a post-apocalyptic dark fantasy novel written by American author Stephen King and first published in 1978 by Doubleday. The plot centers on a pandemic of a weaponized strain of influenza that kills almost the entire world population.",
    price: 14.99,
    author_id: 1,
    )
    Book.create(
    title: "The Green Mile",
    author_name: "Stephen King",
    isbn: "9780671041786",
    date_of_publication: "1996-08-29",
    review: "The Green Mile is a 1996 serial novel by American writer Stephen King. It tells the story of death row supervisor Paul Edgecombe's encounter with John Coffey, an unusual inmate who displays inexplicable healing and empathetic abilities.",
    price: 12.99,
    author_id: 1,
    )
    Book.create(
    title: "The Dark Tower",
    author_name: "Stephen King",
    isbn: "9780451211248",
    date_of_publication: "2004-06-23",
    review: "The Dark Tower is a series of eight books and one short story written by American author Stephen King that incorporate themes from multiple genres, including dark fantasy, science fantasy, horror, and Western.",
    price: 12.99,
    author_id: 1,
    )
    Book.create(
    title: "The Outsider",
    author_name: "Stephen King",
    isbn: "9781501181009",
    date_of_publication: "2018-05-22",
    review: "The Outsider is a horror novel by American author Stephen King, published on May 22, 2018, by Scribner. It is King's 61st novel and his 52nd published novel written under his own name. The novel was first mentioned by King on June 20, 2016, while doing a video chat with fans as part of promoting the upcoming Under the Dome TV series.",
    price: 12.99,
    author_id: 1,
    )
    Book.create(
    title: "The Institute",
    author_name: "Stephen King",
    isbn: "9781982110567",
    date_of_publication: "2019-09-10",
    review: "The Institute is a science-fiction, horror, mystery, and suspense novel by American author Stephen King, published on September 10, 2019, by Scribner. King's novel tells the story of children who are kidnapped and imprisoned in an institution, where they are subjected to a series of tests and procedures meant to combine their exceptional gifts – telepathy, telekinesis, precognition, clairvoyance, and more – for concentrated effect.",
    price: 12.99,
    author_id: 1,
    )

    Book.create(
    title: "Harry Potter and the Philosopher's Stone",
    author_name: "J.K. Rowling",
    isbn: "9780747532743",
    date_of_publication: "1997-06-26",
    review: "Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.",
    price: 16.99,
    author_id: 2,
    )
    Book.create(
    title: "Harry Potter and the Chamber of Secrets",
    author_name: "J.K. Rowling",
    isbn: "9780747538493",
    date_of_publication: "1998-07-02",
    review: "Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series. The plot follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, during which a series of messages on the walls of the school's corridors warn that the 'Chamber of Secrets' has been opened and that the 'heir of Slytherin' would kill all pupils who do not come from all-magical families.",
    price: 16.99,
    author_id: 2,
    )
    Book.create(
    title: "Harry Potter and the Prisoner of Azkaban",
    author_name: "J.K. Rowling",
    isbn: "9780747542155",
    date_of_publication: "1999-07-08",
    review: "Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.",
    price: 13.80,
    author_id: 2,
    )
    Book.create(
    title: "Harry Potter and the Goblet of Fire",
    author_name: "J.K. Rowling",
    isbn: "9780747546245",
    date_of_publication: "2000-07-08",
    review: "Harry Potter and the Goblet of Fire is a fantasy novel written by British author J. K. Rowling and the fourth novel in the Harry Potter series. It follows Harry Potter, a wizard in his fourth year at Hogwarts School of Witchcraft and Wizardry, and the mystery surrounding the entry of Harry's name into the Triwizard Tournament, in which he is forced to compete.",
    price: 11.50,
    author_id: 2,
    )
    Book.create(
    title: "Harry Potter and the Order of the Phoenix",
    author_name: "J.K. Rowling",
    isbn: "9780747551003",
    date_of_publication: "2003-06-21",
    review: "Harry Potter and the Order of the Phoenix is a fantasy novel written by British author J. K. Rowling and the fifth novel in the Harry Potter series. It follows Harry Potter's struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.",
    price: 18.20,   
    author_id: 2,
    ) 
   

    Author.create(
        first_name: "Stephen",
        last_name: "King",
        date_of_birth: "1947-09-21",
        about: "Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. His books have sold more than 350 million copies, and many have been adapted into films, television series, miniseries, and comic books.",
        nationality: "North-American",
    )

    Author.create(
        first_name: "Joanne",
        last_name: "Rowling",
        date_of_birth: "1965-07-31",
        about: "J. K. Rowling is a British author, philanthropist, film producer, television producer, and screenwriter. She is best known for writing the Harry Potter fantasy series, which has won multiple awards and sold more than 500 million copies, becoming the best-selling book series in history.",
        nationality: "British",
    )



