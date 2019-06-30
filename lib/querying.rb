def select_books_titles_and_years_in_first_series_order_by_year
  "select b.title, year from books b where b.series_id=1 order by year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from (select name, motto, max(length(motto)) from characters);"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(id) c from characters group by species order by c desc limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select a.name, sb.name from series s join subgenres sb on s.subgenre_id = sb.id join authors a on s.author_id=a.id"
end

def select_series_title_with_most_human_characters
  "select s.title from characters c join series s on c.series_id = s.id where species='human' group by s.title order by sum(title) desc limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select c.name, count(b.id) from characters c join character_books cb on cb.character_id=c.id join books b on b.id = cb.book_id group by c.id order by count(b.id) desc, name asc"
end
