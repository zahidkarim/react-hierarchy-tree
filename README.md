# Objective

To use Ruby to handle a problem I have never tackled before in 4 hours.

# Instructions

You can view the detailed instructions [here](instructions.md)

## How To Run Parser

1. Clone repository
1. `cd react-hierarchy-parser/lib`
1. `ruby tree_maker.rb` (sample folder is already placed inside the app)
1. Right now the app is configured to puts our the Tree into the console.

**Note:** Only a select number of files will work for this because the parser is expecting a certain format of a `<div>` to come in.

## Thinking and Methodology

- [X] Setup ruby app (Gemfile, Specs, Lib, Readme)
- [X] Get it to run with 1 .jsx file
  - [X] Take an input from the command line that is a file path
  - [X] Parse file to see if there is a `render` method
  - [X] Parse to grab the return

  - [X] Iterate through this string and find all instances of `<`
  - [X] Create a master list of standard html tags
  - [X] Check to see if the div is in standard tags
  - [X] If not place in tree
- [X] Handle multiple files
- [ ] Handle Children of an Element
- [ ] Handle all types of render methods (all files)

## Problems:

This challenge has a few problems to complete it:

1. There is no good rugby javascript parser. There is a gem called `rkelly` that is 4 years old and has 10 outstanding issues on it and will not compile when you run it.

2. I decided to extract the entire file and pull out the html that is returned in the function. From there I can traverse the elements and match from there. However, finding the children of these elements is proving to be a tought challenge.

3. It seems there are 2 problems to solve in the challenge. One is creating a javascript parser and the second is creating an element extractor from JSX.

I am unsure if this was the clear purpose of the challenge or an un seen edge case. Never the less using regular expressions to exract javascript using ruby seems arduous and there must be a better way to do it.
