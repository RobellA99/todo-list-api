DROP DATABASE IF EXISTS `todo-list`;

CREATE DATABASE `todo-list`;

USE `todo-list`;

CREATE TABLE `todo-items` (
    `id` INT UNSIGNED NOT NULL PRIMARY KEY, 
    `name` VARCHAR(255) NOT NULL, 
    `description` TEXT NOT NULL,
    `length` INT,  
    `category_id` INT NOT NULL,
    FOREIGN KEY (`category_id`) REFERENCES `todo-categories`(`id`) ON DELETE CASCADE
);

CREATE TABLE `todo-categories` (
    `id` SERIAL PRIMARY KEY, 
    `title` VARCHAR(255) NOT NULL, 
)

INSERT INTO `todo-items` (`category_id`, `name`, `description`, `length`) VALUES 
-- Career & Learning (id = 1)
(1, 'Update LinkedIn profile and résumé', `Make sure to add necessary sections to profile and show correlating info on resume`, 20),
(1, 'Apply to 3 new job postings', `Look at saved job postings and complete applications`, 60),
(1, 'Complete one online course module', `Go through and finish the vidoes and any tasks required to get 100% completion`, 180),\
(1, 'Attend a local or virtual tech meetup', `Go to an event that has been booked in`, 60),

-- Health & Wellness (id = 2)
(2, 'Meal prep healthy lunches for the week', `Cook and package the 5 meals prepared`, 60),
(2, 'Do a 30-minute workout', `Follow the workout video from youtube to completion`, 30),
(2, 'Book annual medical or dental checkup', `Call local gp and have a confrimed date for checkoup`, 15),
(2, 'Try a new mindfulness or meditation app', `Put on a session from your favourite app and complete it`, 25),

-- Creative Projects (id = 3)
(3, 'Sketch out a basic design for a personal project'),
(3, 'Write 500 words of a blog post, story, or documentation'),
(3, 'Start a Pinterest board for design inspiration'),
(3, 'Record and mix a rough version of a new song'),

-- Finance & Organization (id = 4)
(4, 'Set a monthly budget for groceries, entertainment, and savings'),
(4, 'Review and cancel unused subscriptions'),
(4, 'Organize digital files into folders'),
(4, 'Set a calendar reminder for all upcoming bills'),

-- Home & Personal Life (id = 5)
(5, 'Declutter one drawer, cabinet, or closet'),
(5, 'Plant a new indoor herb or flower'),
(5, 'Deep clean one area of the home'),
(5, 'Fix or donate an item you''ve been ignoring'),

-- Social & Relationships (id = 6)
(6, 'Plan a catch-up call with an old friend'),
(6, 'Send a thank-you or appreciation message to someone'),
(6, 'Attend a social event or community gathering'),
(6, 'Plan a small outing'),

-- Self-Development & Reflection (id = 7)
(7, 'Write down 3 things you’re grateful for today'),
(7, 'Reflect on wins and lessons from the past week'),
(7, 'Set 1 personal goal for the month'),
(7, 'Spend 30 minutes reading a non-fiction book'),

-- Tech & Skills Practice (id = 8)
(8, 'Build a mini-app'),
(8, 'Fix one bug or issue in a personal coding project'),
(8, 'Learn a new tool/library'),
(8, 'Push a code update to GitHub with a meaningful commit message');

INSERT INTO `todo-categories` (name) VALUES
("Career & Learning"),
("Health & Wellness"),
("Creative Projects"),
("Finance & Organisation"),
("Home & Personal Life"),
("Social & Relationships"),
("Self-Development & Reflection"),
("Tech & Skills Practice")


