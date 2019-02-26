# Personal Dashboard

Create a brand new Rails app that allows me to track my personal goals.

User can create one or more Goal records. It should have a text field for the name of the goal and a numeric field for the goal benchmark.

Each day, user can create a Progress record. The progress record would belong to a goal. The user can enter a numeric value into the progress record.

The home page should show a dashboard that lists each goal. Next to each goal it should list each of the user's progress records, with the most recent first. If the progress met or exceeded the goal, then it should print the number in green, otherwise it should print the number in red.

## Example:

I want to create a goal to do 20 push-ups every day. Each day I'll go to my personal dashboard and click on my goal. It'll ask me how many push-ups I did that day, and I'll enter my number. After one week, my Dashboard page might look like this:

| Goal | M  | T  | W  | T  | F  | S  | S  | 
| -- | -- | -- | -- | -- | -- | -- | -- |
| 20 Push-ups per day | 12 | 15 | - | 20 | 30 | 20 | 20 |

## User Authentication

User authentication is not required for this simple app.

