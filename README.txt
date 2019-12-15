This is the template for the Ph.D. thesis following the guidelines set out by the School of Graduate Studies at McMaster University. This is an alteration of the Reed College Thesis Template by Chester Ismay.

-----------------------------------------------------------------------------------------

This template will allow you to write your thesis in one file without having to worry about formatting. It uses the very useful package 'bookdown'. This package allows for cross-referencing within your thesis making it very easy for the reader to navigate and for the author to edit. Another benefit is that this will allow for reproduceable research; something becoming paramount in the academic environment. Finally, using this template to its full potential will allow you to only write any tables, reference results, or write conditional sentances once and they will automatically update themselves if you are to make any quantitative changes.

-----------------------------------------------------------------------------------------

How to get started.

1) You need to enter your personal information (eg, name, advisor, title of your thesis, etc...) by opening the folder "prelim" and making the necessary changes to the files. There is a file called "halftitle", the School of Graduate Studies requires that you give a short title to your thesis that would appear on the spine of the bound copy. The file "authorshort" is meant to be the first letter of your given name and your full surname.


2) To knit the whole project you need to open the "index.Rmd" file and click "knit".

3) To write your thesis, including the abstract and other preliminary pages, open the "chapter" folder and alter the necessary files.

4) To view the pdf version, open it in the folder "_book" but it should automatically open for you when you knit your thesis.

5) Drink plenty of water.


-----------------------------------------------------------------------------------------

There are folders meant for any figures, data, and bibliography files. It is best to keep everything in their appointed folder as this will make your life easier.

-----------------------------------------------------------------------------------------

If you wish to have the file name of the output something other than "Thesis.pdf" you can change it by opening the "_bookdown.yml" file and altering the "book_filename:". If you need the MS word version of your thesis you can output into MS word by uncommenting "thesisdown::thesis_word: default" however the pdf version is advised.

-----------------------------------------------------------------------------------------

If you prefer to use STATA as your statistical package then you can still use this template to its potential. You will have to add a few lines of code to "index.Rmd" that you can find at http://www.ssc.wisc.edu/~hemken/Stataworkshops/Stata%20and%20R%20Markdown/Statalinux.html

-----------------------------------------------------------------------------------------


