# time series analysis on expenses and savings

Small repo for time series analysis on expenses or savings


## Table of contents

- [Motivations](#motivations)
- [Project description](#description)
- [Visuals](#visuals)
- [Packages used](#packages_used)
- [Instructions](#instructions)
- [Files](#files)
- [Possible improvements](#improvements)
- [License](#license)


## Motivations <a name="motivations"></a>

I created this repository to do some tests on time series analysis.



## Project description <a name="description"></a>

As dataset, I am using my personal expenses data and salary (not pushed to GitHub)

The first analysis done is to estimate, with my current monthly saving, where I would be at a certain time period. The analysis is currently done in R but I will create a python version.


## Visuals <a name="visuals"></a>

TBC

<!-- ```text
To link to pictures:
![Alt text](relative/path/to/img.jpg?raw=true "Title")
``` -->

## Packages used <a name="packages_used"></a>

in R: 

- tidyverse
- tidymodels
- data.table
- readxl
- stats
- forecast

## Instructions <a name="instructions"></a>

You can clone this repository by opening Git Bash and the command line

```text
git clone https://github.com/jmballard/ts_money_analysis.git
```

Note: The datasets used in this analysis will NOT be pushed to GitHub as it's private data.


## Files <a name="files"></a>

Here is the content of this repo:

```
|- data (folder containing datasets - not in GitHub)

- .gitignore
- Analysis_savings.R
- LICENSE
- README.md

```


## Possible improvements on this project: <a name="improvements"></a>

List of possible improvements:

- Create a python version
- download shoping data to do some analysis on what we bought and how to improve on it



## License <a name="license"></a>

MIT License

Copyright (c) [2022] [Julie Ballard]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
