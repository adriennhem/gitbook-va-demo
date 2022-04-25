# TODO

Create an admin view from where the current_user can update: 
- variables for the visitor auth (jwt token for each space). 
- variables for the spaces (title, description, button, name of the space). 
- theme design (logo, color).


1. Create an admin view
    1. visit /admin - DONE
    2. Create the Setting model with the different parameter.
    2. allow the user to update the variables on the same panel.  


Disable user sign up.
User has_one Setting.
Create the Setting when a user is created.
Share the login to the user via email.


# Add image 
# Add color 
# Add main text jumbo
# Add text description jumbo


# TODO
We want to let the user edit the color of the bg, the main color, the links, the button, ... 

1. Generate a migration and add the following columns to the Setting model:
- bg_color: String
add_column :users, :bg_color, :string, default: "#151828"
- main_color: String 

<!-- <% if current_user %>
 <style>
   :root {
     --main-color-bg: <%= current_user.bg_color.nil? ? “#151828” : current_user.bg_color %>;
     --main-color-txt: <%= current_user.txt_color.nil? ? “#F4F4F4” : current_user.txt_color %>;
     --card-color-bg: <%= current_user.card_color.nil? ? “#372f2fBF” : “#{current_user.card_color}BF” %>;
 }
 </style>
 <% end %> -->