CREATE TABLE `sponsors` (
        `id` int(3) NOT NULL AUTO_INCREMENT,
        `sponsor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
        `logo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
        FOREIGN KEY (`id`) REFERENCES event(`id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `venue` (
    `venue_id` int(3) NOT NULL,
    `venue_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
    `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
    `Venue_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
    `photo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`venue_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

    CREATE TABLE `event` (
    `id` int(10) NOT NULL,
    `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
    `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
    `date` date not NULL,
    `video_link` varchar(511) COLLATE utf8_unicode_ci  NULL,
    `venue_id` int(3) Not NULL,
    FOREIGN KEY (`venue_id`) REFERENCES venue(`venue_id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

    CREATE TABLE `customer` (
        `cust_id` int(3) NOT NULL,
        `cust_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
        `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
        `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
        PRIMARY KEY (`cust_id`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

    CREATE TABLE `booking` (
    `book_id` int(3) NOT NULL AUTO_INCREMENT,
    `id` int(3) not NULL,
    `cust_id` int(3) not NULL,
    `ticket_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
    FOREIGN KEY (`id`) REFERENCES event(`id`) 
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (`cust_id`) REFERENCES customer(`cust_id`) 
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    PRIMARY KEY (`book_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

    CREATE TABLE `ticket` (
        `id` int(3) not NULL,
        `standard` int(5) not NULL,
        `pro` int(5) NOT NULL,
        `premium` int(5) NOT NULL,
        FOREIGN KEY (`id`) REFERENCES event(`id`) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



