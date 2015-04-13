# Page Selection by Keyword Matching 

Anyone who has used the World Wide Web is familiar with search engines used to find pages matching a user- generated query. Many of these engines are quite sophisticated, using advanced algorithms and parallel searching techniques to provide fast, accurate responses.

This problem is somewhat simpler. A group of web pages has been classified by associating a list of keywords, given in decreasing order of relevance, with each page (i.e., the order of keywords is from the most specific keyword to the least specific). For example, a page on programming in Smalltalk has the keywords Smalltalk, programming, and computers in that order; the most relevant keyword is Smalltalk.

Queries also include a list of keywords, again from most to least relevant. For example, in a query consisting of the keyword Smalltalk followed by the keyword computers, Smalltalk is more important than computers.

In this problem you are to determine the top five (or fewer) pages that match each of an arbitrary number of queries. To determine the strength of the relationship between a query and a web page, assume the keywords for each page and each query are assigned integer weights, in descending order, starting with N, where N is the maximum number of keywords allowed for a web page and query.
The strength of the relationship is the sum of the products of the weights associated with each keyword that appears both in the web page list and the query list. For example, assume the following web pages and keyword lists:

####Page 1: 
Smalltalk, programming, computers
####Page 2:
computers, programming
####Page 3:
computers, Smalltalk

For N equal 8, a query with keywords Smalltalk and programming in that order yields a strength rating of 113 for Page 1 (8*8 + 7*7), 49 for Page 2 (7*7), and 56 for Page 3 (8*7). A query with keywords Smalltalk and computers yields a strength rating of 106 for Page 1 (8*8 + 7*6), 56 for Page 2 (7*8), and 112 for Page 3 (8*7 + 7*8).

Input data consist of one line for each web page and query.A line consists of a code letter
followed by a list of keywords. Code letters P and Q denote a page and a query. Code letters and
keywords are separated by at least one space. Ps and Qs may occur in any order.
Pages are added sequentially starting with page one. The case of characters in the keywords is
not significant. Each query also has of a list of between one and 8 keywords. Again, case being
insignificant for keywords. Number the queries sequentially starting with one.

For each query, identify the 5 (or fewer) pages stored that are the most relevant to the query.Print a single line containing the query identifier, a colon, and the page identifiers of the five most
relevant pages in the decreasing order of relevance. Page identifiers consist of the letter “P”
followed by the page number. Query identifiers consist of the letter “Q” followed by the query
number. If several pages have the same relevance, list them by increasing page number. Do not
list pages that have no relationship (zero strength), even if fewer than five pages are identified.

####Sample Input 

######P Smalltalk programming computers"
######P computers programming
######P computers Smalltalk
######P FORTRAN programming
######P COBOL programming
######P programming
######Q Smalltalk
######Q programming
######Q computers
######Q Smalltalk computers
######Q Smalltalk programming
######Q cooking French
######E

####Sample Output 

#####Query Pages
######Q1:   P1 P3
######Q2:   P6 P1 P2 P4 P5
######Q3:   P2 P3 P1
######Q4:   P3 P1 P2
######Q5:   P1 P3 P6 P2 P4
######Q6:
