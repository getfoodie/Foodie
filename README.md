# Foodie
Original App Design Project - README Template
===

# foodie, Food Wheel, 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Foodie allows users to decide what to eat based on what they are craving for, but if the users have no specific food preferences, they will directly spin the wheel of mixed choices. Else they will spin the wheel based on what type of food they have chosen. After spinning the wheel, the users will be recommended to eat different foods

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Lifestyle app, more specifically for food
- **Mobile:** Yes (Might utilize map)
- **Story:** It allows users to decide what to eat based on what they are craving for, but if the users have no specific food preferences, they will directly spin the wheel of mixed choices. Else they will spin the wheel based on what type of food they have chosen. After spinning the wheel, the users will be recommended to eat different foods
- **Market:** Everyone, especially for those who always have difficulty in deciding what to eat
- **Habit:** Can be used for every meal, as many times the user want.

- **Scope:** 

* Using tab view (bottom nav bar) 1) Cravings Page    2) Wheel Page
    * 1st: Asks the user what they’re craving for 
        * Will have different options to select from             (like boxes)
            * Protein
            * Veggie
            * Carbs 
            * Drinks
        * Option for complete random 
            * This will bring users to a wheel with a variety of options
    * 2nd: Wheel
        * Add/Delete options to the wheel
        * Time to spin
    * 3rd: Pop up screen
        * Will show the user the spun result
        * Will ask if they want to respin 
* Future Cases: 
    * Every time the user spins, if they get an option they don’t like they can respin, the app will take this data and save it
    * Integrating with Yelp and location API


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Questions/Craving Screen
* Wheel
* Results

**Optional Nice-to-have Stories**

* Giving the user a location/place to eat based off of location or yelp API

### 2. Screen Archetypes

* Question/Cravings
   * Will ask the user what kind of food they're looking for
       * Protein
       * Veggie
       * Carbs 
       * Drinks 
       * Option for complete random

* Wheel
   * Give users the ability to add or delete options to from the wheel
   * Time to spin
       * Result = Pop up screen 
           * Will show the user the spun result
           * Will ask if they want to respin 

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Cravings
* Wheel

**Flow Navigation** (Screen to Screen)

* Cravings
   * Asks the user what they’re craving for
       * Protein
       * Veggie
       * Carbs 
       * Drinks 

   * Option for complete random
       * This will bring users to a wheel with a variety of options	
       
* Wheel
    * Add/Delete options to the wheel
    * Time to spin

* Results Pop up screen
    * Will show the user the spun result
    * Will ask if they want to respin 


## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>



### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype
<img src="http://g.recordit.co/Aaec9RyDxi.gif" width=600>

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
