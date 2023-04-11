# Full-stack-developer-Hail-cabs

# Full-Stack-Developer-Hail-Cabs

# Challenges

---

## 1st

[5b943d05-d12d-46a3-b649-4775734619e4.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7123711d-06f4-4bbc-a4e0-5c2cd175737d/5b943d05-d12d-46a3-b649-4775734619e4.png)

Create a website using HTML & CSS no javascript interaction is required. The design is attached on the left.
Bonus Point if used Tailwind CSS

---

## 2nd

Write a nestjs rest api 

- Create an endpoint that stores following information
    - firstName
    - lastName
    - email
    - password
- Create an endpoint to to authenticate from the above stored information and responds with JWT
- Create and endpoint that checks if user is authorised then respond with current user’s information
- Create a healthcheck endpoint
- Create a endpoint that responds with weather information of given city, Use any public API for this. Make sure that the responses are cached

---

## 3rd

Given is the table schema

- users
    - id
    - name
    - city
    - email
    - password
    - isActive
    - createdAt
    - updatedAt
    - deletedAt
- cabs
    - id
    - userId
    - regNumber
    - isActive
    - createdAt
    - updatedAt
    - deletedAt
- drivers
    - id
    - name
    - licenceNumber
- trips
    - id
    - cabId
    - driverId
    - from
    - to
    - distance
    - fromLat
    - fromLng
    - toLat
    - toLng
    - fare
    - amount
    - tax

Question 1

Write a single query in mysql that fetches summary for all users that includes following data for a given date.

- User name
- Revenue
- Distance travelled
- Number of cabs that generated revenue, (there could be some cabs that didn’t run at that day, do not include them)
- Total trips done
- Most active cab (Get the detail of the most active cab)

Question 2

On which columns would you create indexes to make your query run faster?

---

## 4th

Let’s say we want to print numbers from 0 - 4 we can use for loop to print all of them! But we want them to print with a delay of `n` seconds where `n` is the current iteration for example in 1st iteration the delay is 0 seconds and in 2nd it’s 1 seconds and in 3rd it’s 2 seconds and so on..
The following code doesn’t seem to work as expected, please find the bug and help fix it with a brief explanation

```for (var i = 0; i < 5; i++) {
  setTimeout(function () {
    console.log(i);
  }, i * 1000);
}
