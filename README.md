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


## Course Description   
This course offers a rigorous introduction to data visualization from theory to implementation. Drawing on a combination of lectures, readings, discussions and coding, we will translate the timeless concepts of Minard, Playfair, Tufte and Wilkinson to new and diverse fields of study. Students will receive a coding crash-course in R, JavaScript, CSS, HTML and D3. The goal is not to become computer scientists, but to build the requisite foundation for modern implementation of exploratory and explanatory data visualizations. Students will have the opportunity to work in small teams to create interactive data visualizations worthy of their portfolios. The final deliverable will be a research-driven data visualization with accompanying prose in the form of a conference paper submission. A working knowledge of R from at least one previous class is highly recommended.  

## Deliverables
- **Quizzes (30%)** 
Quizzes are essential for assessing student learning and pedagogical efficacy. There will be 4 quizzes in total; students may pick their best three to count towards their final grade.
- **Homework (30%)**
Students will complete at least three assignments and submit them to the course repository as pull requests. All submissions must follow a standard naming convention: `Year-Month-Day-YourName-AssignmentName.FileExtension`
	Assignments will serve as progress indicators on key concepts, methods and techniques.
- **Semester Project (30%)**
Students will have the opportunity to work in small teams to create data visualizations worthy of their portfolios. The final deliverable will be a well-articulated, research-driven data visualization and accompanying prose in the form of a conference paper submission. Students will have considerable leeway in choosing a project topic and finding an appropriate conference or forum for submission.
- **Class Participation (10%)**
	- Attendance
	- Being awake, attentive and respectful
	- Being helpful to peers and the class as a whole
	- Contributing to group work and peer code reviews


## Required Reading

* [Joint Committee on Standards for Graphic Presentation](http://www.jstor.org/stable/pdfplus/2965153.pdf?&acceptTC=true&jpdConfirm=true&acceptTC=true&acceptTC=true). 1915. _American Statistical Association_, 14 (112): 790-797. 
* Edward R. Tufte. 2001. [The visual display of quantitative 	information.](http://www.amazon.com/The-Visual-Display-Quantitative-Information/dp/0961392142) Cheshire, Conn.: Graphics Press, c2001.
* Leland Wilkinson. 2005. [The grammar of graphics](http://link.springer.com/book/10.1007/0-387-28695-0). New York: 	Springer, 2005.
* Hadley Wickham. 2009. [ggplot2: elegant graphics for data analysis](http://www.bioinformaticslaboratory.nl/twikidata/pub/Education/ComputinginR/ggplot2-book.pdf)
* Norman Matloff. 2011. [The art of R programming](http://www.amazon.com/The-Art-Programming-Statistical-Software/dp/1593273843/ref=pd_sim_b_2?ie=UTF8&refRID=1T2KB926VAHCZJPH02K0). San Francisco : No Starch Press, c2011.
* Scott Murray. 2013. [Interactive data visualization for the web.](http://www.amazon.com/gp/product/1449339735/ref=ox_sc_act_title_4?ie=UTF8&psc=1&smid=AUSV0VS9I8UVB) 	Sebastopol, CA: O'Reilly Media, 2013.

## Learning Objectives
... and resources to help you get there  

* [Tufte's Rules](http://www.sealthreinhold.com/tuftes-rules/rule_four.php). Above all else, show the data.
* Grammar of Graphics. Wilkinson's theory and Wickham's implementation.
* Meet your computer
	* [command line](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything)
	* text editors
	* file paths 
* Working with data in `R` 
	* [basic training](http://ecohen4.github.io/data-viz/r/R-tutorial.html)
	* data analysis with `plyr`
	* data visualization with `ggplot`
	* scripting, debugging and writing functions
	* reproducible research and dynamic output with [Rmarkdown](http://rmarkdown.rstudio.com/RMarkdownReferenceGuide.pdf)
* communicating & sharing your results in the browser
	* [github.io](https://pages.github.com/)
	* `HTML`, `CSS`, `JavaScript`
	* interactive visualization with `D3` 
* Version control and collaboration with `github`
	* [don't get scared, get started!](http://readwrite.com/2013/09/30/understanding-github-a-journey-for-beginners-part-1)
	* [github help](https://help.github.com/articles/set-up-git/)
	* [git intro for readers](http://skli.se/2012/09/22/introduction-to-git/)
	- [git intro for visual and auditory learners](https://www.youtube.com/watch?v=LXoWxrTdXkM)
	- [git workflow for beginners](http://skli.se/2012/10/07/git-workflow-beginner/)
	- [forking](https://help.github.com/articles/fork-a-repo)
	- [sharing and collaborating](https://www.youtube.com/watch?v=ifAEho6BmH0&list=PLg7s6cbtAD17uAwaZwiykDci_q3te3CTY)


## Get Started Now!
* Install [R](http://www.r-project.org/) and [RStudio](http://www.rstudio.com/products/rstudio/download/)
* Read about [RMarkdown](http://rmarkdown.rstudio.com/)
* Install [git](http://git-scm.com/download)
* Create a [github](https://github.com/) account if you don't already have one
* Fork the class repo. Your assignments will be submitted as pull requests! 

    	git clone https://github.com/YOUR-NAME/data-viz.git
    	cd data-viz
    	git remote add upstream https://github.com/ecohen4/data-viz.git

## Submit Assignments 
Your assignments will be submitted as pull requests to the class repository on github! Suppose you saved changes on your own `gh-pages` branch and would like to submit a ‘clean’ pull request with only your files and the commits you want. This is pretty easy.

### Option 1: Basic way with file checkouts (losing history):
	git checkout upstream/master #you will be on a ‘detached HEAD’  
	git checkout -b hw1 #checkout a new branch called 'hw1'  
	git checkout <branch> <folder/filename> #pluck a folder/file from another branch but stay on the current branch (in this case 'hw1').  
	git add <folder/filename>
	git commit -m "add only the right files on new clean branch"
	git push -u origin hw1 #push commits to a new branch called hw1.

Your new `hw1` branch now has a copy of the folder/file(s) your plucked from elsewhere. Your working tree is still on the `hw1` branch and you can continue to work on the files and commit+push further changes as frequently as you like.

### Option 2: Advanced way with Rebase (history re-written)
 
Rebasing rewrites history of a branch, in a really clever way. Each commit becomes a new commit, on top of a new beginning point. This is probably the most common way of making a clean pull request.
	
	git checkout gh-pages
	git checkout -b hw1
	git fetch upstream
	git rebase -i origin/gh-pages
	
At this point you’re given a list, where you can pick, squash, or remove commits from your branch. Remember, a branch is just a collection of commits. If, for example, you only want to include the last few commits, simply delete all the others and allow rebase to continue. You should now have a branch that contains only the commits you want.