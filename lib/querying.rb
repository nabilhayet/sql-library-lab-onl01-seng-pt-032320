def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year
    from books
    where books.series_id=1
    GROUP BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto
  from characters
  ORDER BY motto limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, sum(characters.species) As Value
  from characters
  GROUP BY characters.species
  ORDER BY Value limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
  from authors
  INNER JOIN series
  ON authors.id = series.author_id
  INNER JOIN subgenres
  ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  where species = select species from characters where species = 'human'"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.book_id)
  from characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name DESC"
end
