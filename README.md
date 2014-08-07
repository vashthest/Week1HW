Week1HW
=======
Using storyboards to prototype the Dropbox sign in, create account, and signed in experience. Made use of scroll views, tab controllers, navigation controllers, modals, paging scroll views, text fields, and global vars.

Time spent: 10 hours

Completed user stories
-

* [x] Required: User can tap through the 3 welcome screens.
* [x] Required: User can follow the create user flow.
* [x] Required: On the create user form, the user can tap the back button to go to the page where they can sign in or create an account.
* [x] Required: Before creating the account, user can choose to read the terms of service.
* [x] Required: After creating the account, user can view the placeholders for Files, Photos, and Favorites as well as the Settings screen.
* [x] Required: User can log out from the Settings screen.
* [x] Required: User can follow the sign in flow.
* [x] Required: User can tap the area for "Having trouble signing in?"
* [x] Required: User can log out from the Settings screen.
* [x] Optional: Add a detail view for one of the files and implement favoriting the file.
* [x] Optional: Add UITextFields for the forms so you can actually type in them and handle dismissing the keyboard.
* [x] Optional: You should be able to swipe through the welcome screens instead of just tapping them.


Notes
-

- The optional stuff replaced some of the requirements (like swipe replaces tapping through the welcome screen), but those view controllers are still in the storyboard if you want to take a look.
- In addition to adding text fields for create account and sign in screens, I added rudimentary validation to enable and disable the Create and Sign In buttons. For First and Last Name, it makes sure the fields are not empty. For Email, it validates email addresses inline (using a regex from the internet) and turns red if it's invalid when the field loses focus. For Password, it shows the password meter (and changes based on just stupid password length) and validates for non empty passwords.
- For the detail view for Getting Started.pdf, you can favorite the file and if you do, it enables the favorites button and if you go to the Favorites tab, it shows the file there. In the favorites tab, you can also view the file and if you unfavorite it in the detail view, it disappears from the favorites tab. Also, if you sign out when you have favorites, the favorites will go away which is what the current product does.
- The swiping welcome screen stuff was done using a paging enabled Scroll View which basically have 3 image views side by side with the scroll view width equal to the sum of the widths of all 3 screens. This seems like a really janky way to do it. Was this expected?

Walkthrough
-

![Video Walkthrough](Week1HW.gif)