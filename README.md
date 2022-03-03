# Fieldsampling 
Simple "quick-and-dirty" site for keeping track of field sampling schedule.  
- Database of field locations
- Table of dates/appointments
- Day view with
  - Calculated travel/sampling time
  - Sattelite views of gps coordinates
Authors: jcalvillo, gkocher

## Stack 
* ~Ruby 2.3 w/ Rails 5.1.1 deployed to Heroku _Ruby-16_ stack with _postgres_ (_sqlite_ dev db)~
* Ruby 2.5.7 w/ Rails 5.2 deployed to Heroku _Ruby-18_ stack with _postgres_

## Screenshots 
#### calendar view
![tables](/readme-assets/view-calendar.png)
#### day view
![tables](/readme-assets/view-day_details.png)
![tables](/readme-assets/view-day.png)
#### locations view
![tables](/readme-assets/view-locations.png)

## Database schema 
#### list of tables
![tables](/readme-assets/db-tables.png)
#### locations
![locations](/readme-assets/db-locations.png)
#### days
![days](/readme-assets/db-days.png)
#### appointments
![appointments](/readme-assets/db-appointments.png)




