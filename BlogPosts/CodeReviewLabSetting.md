# Code Review in a Lab Setting

## What is Code Review?

If you work at a software company you already know what this is, but you may not be familiar if you're just starting out. Code review is the process by which newly written or modified code is validated before getting added to a code base. Let's say I'm a new developer at small software company. I have three other people working on my team, we handle the code dealing with database interaction. We store emails in the database and frequently need to retrieve that information to send alerts to our users. It's inefficient to type out the SQL query every place in the code we need to retrieve an email, so I've taken out a branch and added a new function `get_email(user)` that will automatically create and execute the query for the provided user. I've checked it works on a couple users, so I replace all manual email queries in the code base and open a pull request.

## With No Review
My company is so small we value speed of development over stability, so I'm able to immediately merge my pull request and congratulate myself for all the time I've saved the other people on my team.

When I get in the next day my whole team is mad, they've each encountered problems caused by my new function.

- Causes problems I didn't anticipate - Devante's issue

Devante is mad because he realized
- Isn't as helpful as I hoped
- People don't know it exists so don't use it

## With Review
I open a pull request and tag the other people on my team for review.

# Code Review in a Lab Setting

## What is Code Review?
If you work at a software company you already know what this is, but you may not be familiar if you're just starting out. Code review is essentially the process

