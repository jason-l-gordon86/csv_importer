CSV Importer
============

We will build a small Ruby application that will import a list names
from a CSV file. After a successful import we manipulate the data answering
the following questions:

- How many names are male?
- How many names are female?
- How many people are named Jane?
- What is the total count of names?
- What is the most common Last Name?
- What is the most common First Name?

Usage
=====
```ruby

importer = CSVImporter.new("test_names.csv")
importer.parse_from_csv #=> parses CSV file

# How many names are male?
importer.total_count("m") #=> 10

# How many names are female?
importer.toal_count("f") #=> 7

# How many people are named Jane?
importer.total_count("Jane") #=> 3

# What is the total count of names?
importer.total_count #=> 17

# What is the most common Last Name?
importer.most_common_name(:lastname) #=> "Fisher"

# What is the most common First Name?
importer.most_common_name(:firstname) #=> "Jane"

```
