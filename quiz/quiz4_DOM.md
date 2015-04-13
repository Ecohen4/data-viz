# Quiz 4: Document Object Model

	Course: Data Visualization (QMSS G4063) Spring 2015  
	Time/Location: MW 1:10pm-2:25pm / 313 Fayerweather  
	Instructor: Elliot Cohen, Ph.D.
	Quantitative Methods in the Social Sciences (QMSS)  
	Graduate School of Arts and Sciences (GSAS) 
	Columbia University
	
## Conceptual Framework

	What does `DOM` stand for?
	
	
	
	What does `HTML` stand for?  What is its primary purpose in the DOM? 
	
	 
	
	What does `CSS` stand for?  What is its primary purpose in the DOM?  
	
	
	
	What does `D3` stand for? What is it? 
	
	
	
	
## JavaScript

In the following sections, next to each line of Javascript, add a comment that describes what it does. Do not use the method name in its own definition.

For example, suppose we define the following JavaScript object, we comment accordingly:
	
	var a = [1,2,3,4,5,6,7]; // defines an array
	
#### Methods
When functions are assigned to the properties of an object, we call them methods.  What do the following methods do? Again, I will answer the first one for you as an example:

	a.length;	  // returns the length of the array.
	a.push(8);   
	a.pop();     
	a.shift();   
	a.unshift(0);

#### Return Values From An Array
What is the return value on each line?
	
	a[1];          			 
	a[a.length-1];
	a.slice(0, a.length-1);
	a.slice(0);

#### JSON 
Suppose we defined three JavaScript Objects:

	var book = {
	topic: "javascript", 
	useful: true,
	author: "Flanagan"
	};
	
	var family = {
	    "jason" : {
	        "name" : "Jason Lengstorf",
	        "age" : "24",
	        "gender" : "male"
	    },
	    "kyle" : {
	        "name" : "Kyle Lengstorf",
	        "age" : "21",
	        "gender" : "male"
	    }
	};

	var schedule = [{
		"class": "Data Visualization",
	    "instructor" : "Elliot",
	    "TA" : "Huei-yi",
	    "location" : "313 Fayerweather",
	    "time" : "MW 1:10pm-2:25pm",
	    "awesome": true
	},
	{
		"class": "14th Century European History",
	    "instructor" : "Edward I of England",
	    "TA" : "William Wallace",
	    "location" : "Scotland",
	    "time" : "T/TH 1:10pm-2:25pm",
	    "awesome": false
	}];

	
What are the return values?

	book.topic;			
	book["useful"];
	book.author==="Flanagan";
	schedule[1].instructor;	 
	schedule[1].location;

How do you access the following information?
	
	Kyle's age?  
	Jason's name?  


Now let's define two more JSON:

	var points = [
	{x:0, y:0},
	{x:1, y:1}
	];

	var data = {
		trial1: [[1,2], [3,4]],
		trial2: [[2,3], [4,5]]
	};

What are the return values?
	
	points[1]
	points[1].y
	data.trial2[1]

#### Functions

Write a javascript function that returns a value one larger than the value passed in.

	|
	|
	|
	|

Evaluate:
	
	[1, 2, 7, 10].filter(function(i) { return i > 5 })[1]

#### Relational Operators
Suppose we define two variables x and y:
	
	var x=2, y=3; // variable assignments

What are the return values to the following statements?

	x==y;
	x!=y;
	x<y;
	x <= y;
	false==(x>y);
	(x==2) && (y==3);
	(x>3) || (y<3);
	!(x==y);

## CSS 
Exactly like above, add comments to the following CSS selectors. [hint: use CSS comment characters instead of js]

	#ID	
	
	.class
	
	A B
	
	div li {
	          color: "red"
	        } 
	        
	p{color:red;}
		
	ul+p{color:red;}	
	
	A>B{border: 10 solid black;}
 
Now write your own code!

	Set a CSS style rule for all content paragraphs in the body of a DOM.
	
	
	
	
	
	Write a D3 selector to apply your CSS style rule to all the paragraphs in the body of the DOM.
	|
	|
	|
	|
	


## Color

## Color

	Explain the difference between additive and subtractive colors?
	
	


Name the following colors:

	# 00 00 00
	# ff 00 00
	# 00 ff 00
	# 00 00 ff
	# ff ff ff
	# 00 ff ff
	# ff 00 ff
	# ff ff 00
	
What is the range of each tuple in HEX?

## Congratulations You Survived!

	Name:  
	UNI:  
	Date: