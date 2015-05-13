
Data Visualization (QMSS G4063) Spring 2015  
Quantitative Methods in the Social Sciences (QMSS)  
Graduate School of Arts and Sciences (GSAS) 
Columbia University

Time/Location: MW 1:10pm-2:25pm / 313 Fayerweather  
Instructor: Elliot Cohen, Ph.D.
***

# Quiz 4: Document Object Model

## Conceptual Framework

What does `DOM` stand for?  
Document Object Model.

What does `HTML` stand for?  What is its primary purpose in the DOM?  
Hypertext Markup Language. Structure.

What does `CSS` stand for?  What is its primary purpose in the DOM?  
Cascading Style Sheets. Style.

What does `D3` stand for? What is it?  
Data Driven Documents. A javascript library. 

## JavaScript
In the following sections, next to each line of code, add a comment that describes what it does. Do not give circular answers (such as using a method name in its own definition).

As an example, suppose we define the following JavaScript object, we comment accordingly:
	
	var a = [1,2,3,4,5,6,7]; // defines an array --> good answer
	var a = [1,2,3,4,5,6,7]; // sets a = 1:7 --> bad answer
	
#### Methods
When functions are assigned to the properties of an object, we call them methods.  What do the following methods do? Again, I will answer the first one for you as an example:

	a.push(8);    // append the number 8 to the end of the array
	a.length;	  // returns the length of the array.
	a.pop();      // remove the last number and return its value
	a.shift();    // remove the first value
	a.unshift(0); // prepend one or more elements to the beginning of an array. The unshift() method is like the push() method, only it works at the beginning of the array.  

#### Return Values From An Array
What is the return value on each line?
	
	a[1];      // second item in the array. JS is zero indexed.
	a[a.length-1]; 	// last item in the array
	a.slice(0, a.length-1); // array.slice(start, end) => returns all items but the last
	a.slice(0); // returns all the items

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

	book.topic					// "javascript"
	book["useful"]				// true
	book.author==="Flanagan";	// true
	schedule[1].instructor;	    // "Edward I of England"
	schedule[1].location;		// "Scotland"

How do you access Kyle's age?   // family.kyle.age  
How do you access Jason's name? // family.jason.name  


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
	
	points[1]      // Object {x: 1, y: 1}
	points[1].y    // 1
	data.trial2[1] // [4,5]

#### Functions
Write a javascript function that returns a value one larger than the value passed in. Show how to use it.

	function plus1(x) { //define a function named "plus1"
		return x+1;     //return value one larger than the value passed in
	}
	
	plus1(3)

Evaluate:

	[1, 2, 7, 10].filter(function(i) { return i > 5 })[1]
	
// 10 is the only correct answer. Partial credit for 7 (indexing off-by-one error). No credit for <5.

#### Relational Operators
Suppose we define two variables x and y:
	
	var x=2, y=3; // variable assignments

What are the return values to the following statements?

	x==y;         		// false. equality test
	x!=y;		  		// true. inequality test
	x<y;		  		// true. is x less than y?
	x <= y; 	  		// true. is x less than or equal to y?
	false==(x>y);       // true. false == false
	(x==2) && (y==3);   // true. both comparisons are true. && is AND.
	(x>3) || (y<3);    // false. neither comparison is true. || is OR.
	!(x==y);           // true. ! inverts a boolean value

## CSS 
Same as above, add comments to the following CSS selectors. [hint: use CSS comment characters instead of js]

	#ID    /* Target particular ID. this is the most specific selector of all */
	
	.class /* Target every element of a particular class */
	
	A B    /* Select all B elements that are descendants of A */
	
	div li {
	          color: "red"
	        } /* Select all list items in a particular div and set them to red */
	        
	p{color:red;}    /* Type selectors select HTML Elements, e.g. p, H1, H2, ul, ol, lo */
	
	ul+p{color:red;} /* select the first <p> element that immediately follows a ul element */
	
	A>B{border: 10 solid black;} /* Direct Descendent */

 
Set a CSS style rule for all content paragraphs in the body of a DOM.

/* p.content {
			color: red;
			background-color: white;
			font-size: 24px;
			}
*/

Write a D3 selector to apply your CSS style rule to all content paragraphs in the body of the DOM.

// d3.select("body").append("p").attr("class", "content").text("content paragraph");


## Color
Explain the difference between additive and subtractive colors.
<br />
<br />
<br />
<br />

Name the following colors:

	# 00 00 00 // black
	# ff 00 00 // red
	# 00 ff 00 // green
	# 00 00 ff // blue
	# ff ff ff // white
	# 00 ff ff // cyan
	# ff 00 ff // magenta
	# ff ff 00 // yellow
	
What is the range of each tuple in HEX? // 0-255

## Congratulations You Survived!
Name:  
UNI:  
Date: