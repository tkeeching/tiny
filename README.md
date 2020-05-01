# Tiny

A lightweight app that speaks positivity

Try it out here: [Demo](https://secure-wildwood-53101.herokuapp.com/)


## Stack
- HTML
- CSS
- Ruby
- Sinatra
- PostgreSQL


## UI Direction
Mobile first


## Summary

The app lets user share word-based posts under 150 characters.


## Functionality

1. Login authentication
2. Once logged in, 
    - user can create a new post
    - user has the ability to 'heart' a post that they like.
    - user has the ability to delete their own post.


## Issues List

- [x] unable to log new user in after new user sign up via app UI 
- [x] app breaks when user click the login button without entering email / password
- [x] app breaks when user click the signup button without entering the required information
- [x] need a method to keep track of user's upvote/downvote to prevent spamming
- [ ] need a method to check for email duplicates upon new user sign up
- [ ] better date formatting for cleaner UI
- [x] need a method to display upvote/downvote counter
- [ ] need email and username validation upon signup to prevent duplicates
- [ ] app gives internal server error when user tries to login with non-existing account
- [ ] whole page will reload when user click the heart button


## Future features

- [ ] display post by number of hearts
- [ ] allow user to udpate their profile
- [ ] allow user to comment on posts
- [ ] allow user to share post to other platform
- [ ] display word counter when user is creating new post