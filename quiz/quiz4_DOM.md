Elliot Cohen, Ph.D.  
Data Visualization (QMSS G4063) Spring 2015  
Quantitative Methods in the Social Sciences (QMSS)  
Graduate School of Arts and Sciences (GSAS) 
Columbia University  
***
# Quiz 4: Document Object Model

What does `DOM` stand for?
<br />
<br />
What does `HTML` stand for?  In one word, what is its primary purpose in the DOM?
<br />
<br />
What does `CSS` stand for?  In one word, what is its primary purpose in the DOM?
<br />
<br />
What does `D3` stand for? What is it?
<br />
<br />

## JavaScript
In the following sections, next to each line of code, add a comment that describes what it does. Do not give circular answers (such as using a method name in its own definition).

As an example, suppose we define the following JavaScript object, we comment accordingly:
	
	var a = [1,2,3,4,5,6,7]; // defines an array --> good answer
	var a = [1,2,3,4,5,6,7]; // sets a = 1:7 --> bad answer
	
#### Methods
When functions are assigned to the properties of an object, we call them methods.  What do the following methods do? Again, I will answer the first one for you as an example:

	a.push(8);    // append the number 8 to the end of the array
	a.length;  
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
	    "awesome": true
	}];

	
What are the return values?

	book.topic					
	book["useful"]				
	book.author==="Flanagan";	
	schedule[1].instructor;	    
	schedule[1].location;		

How do you access Kyle's age?  
How do you access Jason's name?  


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
Write a javascript function that returns a value one larger than the value passed in. Show how to use it.

<br />
<br />
<br />
<br />

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
Comment the following CSS selectors. Use CSS comment characters instead of js.

	#ID
	.class
	A B
	div li {
	          color: "red"
	        }     
	p{color:red;}
	ul+p{color:red;}
	A>B{border: 10 solid black;}

 
Set a CSS style rule for all content paragraphs in the body of a DOM.

<br />
<br />
<br />
<br />

Write a D3 selector to apply your CSS style rule to all content paragraphs in the body of the DOM.

<br />
<br />
<br />
<br />

## Color
Explain the difference between additive and subtractive colors.

<br />
<br />
<br />
<br />

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
<br />
<br />

## Congratulations You Survived!
Questions?  
Comments?  
Suggestions?  
<br />
***
Name:  
UNI:  
Date: