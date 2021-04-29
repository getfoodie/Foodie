# Foodie
![2](https://user-images.githubusercontent.com/65577867/113358339-a19cc680-9313-11eb-9c55-95c0637aba1b.jpg)


Original App Design Project - README Template
===

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Foodie allows users to decide what to eat based on what they are craving for, but if the users have no specific food preferences, they will directly spin the wheel of mixed choices. Else they will spin the wheel based on what type of food they have chosen. After spinning the wheel, the users will be recommended to eat different foods

### App Evaluation
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

- [x] Questions/Craving Screen
   - [ ] Buttons  
- [x] Wheel
   - [ ] Buttons 
- [x] Results
   - [ ] Buttons 


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
<img src="https://github.com/getfoodie/Foodie/blob/main/FoodieWireframes.png" width=600>



### [BONUS] Digital Wireframes & Mockups
<img src="https://github.com/getfoodie/Foodie/blob/main/DigitalWireframes.png" width=600>

### [BONUS] Interactive Prototype
<img src="http://g.recordit.co/JyBGpkpIGh.gif" width=600>

### Unit 10 
<img src="http://g.recordit.co/EQM2U45Yke.gif?fbclid=IwAR2KidRwpkuSp1VIxmqsN90b8RjV2ymSqkRT_GhED0DFc9tWOczvyhxBe3I" width=600>

### Unit 11 
<img src="http://g.recordit.co/SHjr2wJi5F.gif" width=600>

## Schema 

### Models

Food Options
| Property | Type     | Description|
| -------- | -------- | -------- |
| food     | string   | Name of the food category     |
| image    | file     | Image of the food catgory     |
| pickedCategory  | array   | The food text + image category. Picked category will turn True in Array and the rest is False |

Wheel 
| Property   | Type   | Description                           |
| ---------- | ------ | ------------------------------------- |
| food | string | Name of the food in specific category |
| spin | boolean | False until you click button to spin the wheel|
| foodChoice |  array | array to add/remove food choices |

Results
| Property   | Type       | Description |
| --------   | ---------- | ----------- |
| pickedFood | string     | The randomly picked result of food after spinning the wheel |
| respin     | boolean     | Click on the button to respin the wheel and this will be true. Then it will go back to the screen to pick what you are craving for again |

### Networking
* Cravings Screen
    * (Read/GET) Taking in the selected category array
    ```swift
    //Query all foods from the food category user picked
    let query = PFQuery(className:"food")
    query.whereKey("craving", equalTo: pickedFood)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (food: [PFObject]?, error: Error?) in
        if let error = error {
            print(error.localizedDescription)
        } else if let posts = posts {
            print("Successfully retrieved \(foods.count) foods.")
            // TODO: Do something with posts...
        }
    }

* Wheel Screen
    * (Read/GET) Spinning the wheel
     ```swift
    let query = PFQuery(className:"wheel")
    query.whereKey("spin", equalTo: wheel)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (food: [PFObject]?, error: Error?) in
        if let error = error { 
            print(error.localizedDescription)
        } else if let posts = posts {
            print("Successfully retrieved \(foodOptions.count) food options.")
        // TODO: Do something with posts...
        }
    }
    
    ```
    
    * (Update/PUT) Generating food options for the wheel
    ```swift
    let query = PFQuery(className:"wheel")
    query.getObjectInBackground(withId: "xWMyZEGZ") { (wheel: PFObject?, error: Error?) in
        if let error = error {
            print(error.localizedDescription)
        } else if let wheel = wheel {
            wheel["addOption"] = true
            wheel["foodOption"] = 1338
            wheel.saveInBackground()
        }
    }
    ```
    
    * (Delete) Removing food options from the wheel
    ```swift
    PFObject.deleteAll(inBackground: objectArray) { (succeeded, error) in
        if (succeeded) {
            // The array of objects was successfully deleted.
        }
        else {
            // There was an error. Check the errors localizedDescription.
        }
    }
    ```
    * (Create/POST) Adding food options to the wheel
    ```swift 
    let foodsCategory = PFObject(className:"wheel")
    foodsCategory["new"] = input.user
    foodsCategory.saveInBackground { (succeeded, error)  in
        if (succeeded) {
            // The object has been saved.
        } else {
            // There was a problem, check error.description
        }
    }
    ```

* Results Screen
    * (Read/GET) Respinning the wheel
    ```swift
    let query = PFQuery(className:"wheel")
    query.whereKey("spin", equalTo: wheel)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (food: [PFObject]?, error: Error?) in
        if let error = error { 
            print(error.localizedDescription)
        } else if let posts = posts {
            print("Successfully retrieved \(foodOptions.count) food options.")
        // TODO: Do something with posts...
        }
    }
    
    ```
- [OPTIONAL: List endpoints if using existing API such as Yelp]
