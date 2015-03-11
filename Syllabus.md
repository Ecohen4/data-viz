# Data Visualization
	Quantitative Methods in the Social Sciences (QMSS)  
	Graduate School of Arts and Sciences (GSAS)  
	Columbia University

## Course Details
Course: QMSS G4063 Spring 2015  
Lecture: MW 1:10pm-2:25pm at 313 Fayerweather  
Office Hours: W 2:30pm-3:30pm at IAB 270C 

## Instructor
Elliot Cohen, Ph.D.  
Lecturer in the Department of Statistics  
Columbia University

## Learning Objectives
... and resources to help you get there  

* [Tufte's Rules](http://www.sealthreinhold.com/tuftes-rules/rule_four.php). Above all else, show the data.
* Grammar of Graphics. Wilkinson's theory and Wickham's implementation.
* Meet your computer
	* command line
	* text editors
	* file paths 
* Working with data in `R` 
	* [Basic training](http://ecohen4.github.io/data-viz/r/R-tutorial.html)
	* Data analysis with __plyr__
	* Data visualization with __ggplot__
	* Scripting, debugging and writing functions
	* Reproducible research and dynamic output with [Rmarkdown](http://rmarkdown.rstudio.com/RMarkdownReferenceGuide.pdf)
* Communicating & sharing your results in the browser
	* github.io
	* `HTML`, `CSS`, `JavaScript`
	* Interactive visualization with `D3` 
* Version control and collaboration with `github`
	* [Don't get scared, get started!](http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1)
	* [Github Help](https://help.github.com/articles/set-up-git/)
	* [Git intro for readers](http://skli.se/2012/09/22/introduction-to-git/)
	- [Git intro for visual and auditory learners](https://www.youtube.com/watch?v=LXoWxrTdXkM)
	- [Git workflow for beginners](http://skli.se/2012/10/07/git-workflow-beginner/)
	- [Forking](https://help.github.com/articles/fork-a-repo)
	- [Sharing and Collaborating](https://www.youtube.com/watch?v=ifAEho6BmH0&list=PLg7s6cbtAD17uAwaZwiykDci_q3te3CTY)
	

## Detailed Syllabus 
**Subject to change**. Syllabus will be updated periodically throughout the semester based on progress assessments and student learning outcomes. 
 
- Jan. 21 (W): Welcome! Introduction, context and history of Data Viz. Review syllabus and course resources.
- Jan. 26 (M): Anscombe's Quartet. Statistical graphics. Visual model diagnostics. 
- Jan. 28 (W): `R` tutorial.
- Feb. 02 (M): Quiz 1 (Tufte and Wilkinson Ch. 1-3). From Wilkinson's grammar of graphics to implementation with Hadley's __ggplot2__.
- Feb. 04 (W): Meet your computer. Git and `github` tutorial.
- Feb. 09 (M): Guest Lecture Michael Malecki - __Data Maps__. Reading due today: [value-by-alpha maps](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3173776/pdf/nihms322499.pdf) & [more on value-by-alpha maps](http://andywoodruff.com/blog/value-by-alpha-maps/)
- Feb. 11 (W): Guest Lecture Swupnil Sahai - `Tableau`.
- Feb. 16 (M): Time Series: The Climate Hockey Stick (IPCC). WSJ and NYT Business Section graphics. [gapminder](http://www.gapminder.org/) 
- Feb. 18 (W): Handling time series in `R` with _date()_ and _POSIX()_ objects. In-class assignment: Handling geophysical time series -- example from [wind energy analysis](http://ecohen4.github.io/ECREEE/#visually-inspect-the-data-with-respect-to-time).
- Feb. 23 (M):
	- Quiz 2! 
	- Quiz review.
	- Project status updates. 
	- Narrative Graphics of Space and Time: Minard's narrative of Napoleon's Failed Conquest of Russia. [NYT Ebola Graphics](http://www.informationisbeautiful.net/visualizations/the-microbescope/). Ornithology and botany field guides. 
	- Reading due today: Tufte chapters 4-9. Wilkinson chapters 4-7 (you can skim ch. 5). 
	- HW2 due Monday Mar. 2nd: Re-Create Minard's Napolean Conquest _or_ Ebola/contagion graphic in `R`.
- Feb. 25 (W): 
	- `R` to the next level (review):
		- Split-Apply-Combine with Hadley's [plyr](http://www.jstatsoft.org/v40/i01/paperre). 
		- Reshape data with [reshape2](http://cran.r-project.org/web/packages/reshape2/index.html). 
		- Create the expected data structure for [ggplot](http://docs.ggplot2.org/current/).
	- `git` to the next level (new): 
		- Undo things with git [revert](https://www.atlassian.com/git/tutorials/undoing-changes/git-revert) and git [reset](https://www.atlassian.com/git/tutorials/undoing-changes/git-reset)
		- Resolve merge conflicts with git [mergetool](http://git-scm.com/docs/git-mergetool) and from the [command line](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/) 
- Mar. 02 (M): HW2 due today. Project status updates due today. In class: Scripting, debugging and writing functions in `R`.
- Mar. 04 (W): Peer code review of HW2 (30min). Time to work on projects (45min). Elliot at conference in Portugal; Hueiyi will be available for questions.
- Mar. 09 (M): Cartography and Choropleths with __sp__, __rMaps__, __maps__, __maptools__ and other `R` libraries.

		install.packages(c("sp", "maps", "maptools", "reshape", "deldir"))
		require(devtools)
		install.packages("base64enc")
		install_github('ramnathv/rCharts@dev')
		install_github('ramnathv/rMaps')

- Mar. 11 (W): Mid-term Quiz. Introduction to the Document Object Model paradigm. 
	- Reading for next week: 
		- Data Viz w. D3.js Cookbook (Zhu) Ch. 1-3: setup, selections, data.
		- Interactive Data Viz for the Web (Murray) Ch. 3-6: technology, setup, data.
		- Semantically-Resonant colors:
			- [d3](https://github.com/mbostock/d3/wiki/Ordinal-Scales#categorical-colors)
			- [Brewer](https://github.com/mbostock/d3/wiki/Ordinal-Scales#colorbrewer)
			- [I want Hue](http://tools.medialab.sciences-po.fr/iwanthue/index.php)
			- [Tristen](http://tristen.ca/hcl-picker/#/hlc/6/1/21313E/EFEE69)
- Mar. 16 (M): SPRING BREAK
- Mar. 18 (W): SPRING BREAK
- Mar. 23 (M): Colors! Color scales. Semantically resonant colors. Color pallettes. HEX.
- Mar. 25 (W): Document Object Model part I & II: HTML & CSS.
- Mar. 30 (M): Document Object Model part III: JavaScript
	- Reading due today (YES READ BOTH): 
		- Data Viz w. D3.js Cookbook (Zhu) Ch. 4-6: scales, axes, transitions.
		- Interactive Data Viz for the Web (Murray) Ch. 7-9: scales, axes, transitions.
- Apr. 01 (W): Putting together the DOM with JsFiddle, Plunkr or a local server.
- Apr. 06 (M): D3 part I: setup, selections and data.
- Apr. 08 (W): D3 practice
- Apr. 13 (M): D3 part II: scales, axes, transitions.
	- Reading due today (YES READ BOTH): 
		- Data Viz w. D3.js Cookbook (Zhu) Ch. 7-9: shapes, charts, layouts.
- Apr. 15 (W): Build a webpage on github.io
- Apr. 20 (M): Quiz4: DOM. Quiz review. 
	- Reading Due Today (YES READ BOTH): 
		- Data Viz w. D3.js Cookbook (Zhu) Ch. 10: Interactivity.		- Interactive Data Viz for the Web (Murray) Ch. 10: Interactivity.
- Apr. 22 (W): TBD
- Apr, 27 (M): TBD
- Apr. 29 (W): First FULL draft of conference paper due! Peer review.
- May  04 (M): First FULL draft of project website due! Peer code review.
- FINAL EXAM WEEK: Present Final project (conference paper/presentation with accompanying website).
