# Tipsy

**Tipsy** is a simple iOS app that helps users split a bill and calculate tips. It allows users to input the total bill amount, select a tip percentage, and specify the number of people to split the bill with. The app then calculates the total amount each person should pay, including the tip.

## Features

- Enter the total bill amount.
- Select a tip percentage (0%, 10%, 20%).
- Adjust the number of people splitting the bill.
- Calculate the amount per person with the tip included.

### Architecture
This app is built using the MVC (Model-View-Controller) design pattern:

- Model: TipBrain class handles the bill and tip calculations.
- View: The user interface is designed in the storyboard and linked to the ViewController and ResultVC classes.
- Controller:
ViewController manages user input and interactions.
ResultVC displays the calculated results.

## Screenshots

![simulator_screenshot_DE7719FD-CD1B-479B-B9F3-EB326841636B](https://github.com/user-attachments/assets/0bd093f4-3d7b-493e-9069-f3a0b27d5b56)
![simulator_screenshot_A58FAC11-8F23-4FF0-8A49-232181544FD8](https://github.com/user-attachments/assets/c6d78e6d-bc4d-4325-af69-e0ac76557f25)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/tipsy.git
