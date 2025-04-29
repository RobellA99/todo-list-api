DROP DATABASE IF EXISTS `todo-list`;

CREATE DATABASE `todo-list`;

USE `todo-list`;

CREATE TABLE `todo-categories` (
    `id` INT NOT NULL PRIMARY KEY, 
    `title` VARCHAR(255) NOT NULL
);

CREATE TABLE `todo-items` (
    `id` INT UNSIGNED NOT NULL PRIMARY KEY, 
    `name` VARCHAR(255) NOT NULL, 
    `description` TEXT NOT NULL,
    `length` INT,  
    `category_id` INT NOT NULL,
    FOREIGN KEY (`category_id`) REFERENCES `todo-categories`(`id`) ON DELETE CASCADE
);

INSERT INTO `todo-categories` VALUES
(1, 'Career & Learning'),
(2, 'Health & Wellness'),
(3, 'Creative Projects'),
(4, 'Finance & Organization'),
(5, 'Home & Personal Life'),
(6, 'Tech & Skills Practice');

INSERT INTO `todo-items` (`id`, `category_id`, `name`, `description`, `length`) VALUES 
-- Career & Learning (id = 1)
(1, 1, 'Update LinkedIn profile and résumé', 'Make sure to add necessary sections to profile and show correlating info on resume', 20),
(2, 1, 'Apply to 3 new job postings', 'Look at saved job postings and complete applications', 60),
(3, 1, 'Complete one online course module', 'Go through and finish the videos and any tasks required to get 100% completion', 180),
(4, 1, 'Attend a local or virtual tech meetup', 'Go to an event that has been booked in', 60),

-- Health & Wellness (id = 2)
(5, 2, 'Meal prep healthy lunches for the week', 'Cook and package the 5 meals prepared', 60),
(6, 2, 'Do a 30-minute workout', 'Follow the workout video from YouTube to completion', 30),
(7, 2, 'Book annual medical or dental checkup', 'Call local GP and have a confirmed date for checkup', 15),
(8, 2, 'Try a new mindfulness or meditation app', 'Put on a session from your favorite app and complete it', 25),

-- Creative Projects (id = 3)
(9, 3, 'Sketch out a basic design for a personal project', 'Build out the initial idea and design for a first project', 45),
(10, 3, 'Write 500 words of a blog post, story, or documentation', 'Create first post for platform and make sure it has been proofread and checked', 120),
(11, 3, 'Start a Pinterest board for design inspiration', 'Find 5 to 10 images to be added to the board', 20),
(12, 3, 'Record and mix a rough version of a new song', 'Import audio files and begin to build out melody and bass for new song', 100),

-- Finance & Organization (id = 4)
(13, 4, 'Set a monthly budget for groceries, entertainment, and savings', 'Use favorite spreadsheet platform and input all outgoings and income for month to set budget', 60),
(14, 4, 'Review and cancel unused subscriptions', 'View bank account or use platform to track subscriptions and unsubscribe from ones not used', 30),
(15, 4, 'Organize digital files into folders', 'Scan through all files and separate into categories to be ready to be put into folders', 30),
(16, 4, 'Set a calendar reminder for all upcoming bills', 'Print out previous months statements and pick out recurring bills and add dates for payments on calendar', 60),

-- Home & Personal Life (id = 5)
(17, 5, 'Declutter one drawer, cabinet, or closet', 'Work from top to bottom and remove and organize items inside', 60),
(18, 5, 'Plant a new indoor herb or flower', 'Locate good setting to place new plant and create space for it to be placed', 15),
(19, 5, 'Deep clean one area of the home', 'Starting with the bathroom remove loose items and begin cleaning from top to bottom', 45),
(20, 5, 'Fix or donate an item you''ve been ignoring', 'Organize items from a closet or cabinet and remove those not used recently that are to be sent', 60),

-- Tech & Skills Practice (id = 6)
(21, 6, 'Build a mini-app', 'Build out idea and visual chunking on the visuals of the app', 180),
(22, 6, 'Fix one bug or issue in a personal coding project', 'Push commit on bug fix branch for a single component', 120),
(23, 6, 'Learn a new tool/library', 'Complete a video module on new React library and complete tasks associated', 120),
(24, 6, 'Push a code update to GitHub with a meaningful commit message', 'Update branch and complete build and styling and push update to GitHub', 60);




