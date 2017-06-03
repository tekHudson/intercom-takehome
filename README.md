1. What's your proudest achievement? It can be a personal project or something you've worked on professionally. Just a short paragraph is fine, but I'd love to know why you're proud of it, what impact it had (If any) and any insights you took from it.

    By far and above my proudest achievement in coding has been the creation of StockAid. I have donated time in my life to a number of non-profit organizations and other causes but none has been so rewarding as StockAid. The work I have done has become the backbone for the non-profit that provides tens of thousands of items per year (valuing over $250,000) to victims of sexual assult and human trafficking. Before I was able to help with 2 hands, now my mind is the tool I can use to create assistance to those in need. I only hope I can inspire others to follow me in this discovery that through using our minds our reach can be even greater.


2. Write a function that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers. e.g. [[1,2,[3]],4] → [1,2,3,4].
    - If the language you're using has a function to flatten arrays, you should pretend it doesn't exist.

    Refer to flatten_clone.rb


3. We have some customer records in a text file (customers.json) -- one customer per line, JSON-encoded. We want to invite any customer within 100km of our Dublin office for some food and drinks on us. Write a program that will read the full list of customers and output the names and user ids of matching customers (within 100km), sorted by User ID (ascending).
    - You can use the first formula from this Wikipedia article to calculate distance. Don't forget,  you'll need to convert degrees to radians.
    - The GPS coordinates for our Dublin office are 53.3393,-6.2576841.
    - You can find the Customer list here.
    ⭑ Please don’t forget, your code should be production ready, clean and tested!

###### Requirements:
- You will need ruby (requires version 2.1+)
- Program requires JSON gem (normally already installed)
- Run `gem install haversine` to install haversine gem (https://github.com/kristianmandrup/haversine)
- For sepcs you will need to run `gem install rspec`

###### Execution:
- To run the program type `ruby main.rb`

###### Tests:
- Spec can be run with `rspec inviter_spec.rb`




