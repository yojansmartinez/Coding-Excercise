USE PETBOARDING; 

INSERT INTO pet(breedId, petTypeId, name, age, weight, color)
VALUES
    ((SELECT id FROM breed WHERE description = 'Labrador Retriever'), (SELECT id FROM petType WHERE description = 'Dog'), 'Buddy', 3, 10.5, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Golden Retriever'), (SELECT id FROM petType WHERE description = 'Dog'), 'Max', 5, 15.2, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Domestic Shorthair'), (SELECT id FROM petType WHERE description = 'Cat'), 'Lucy', 3, 8.7, 'White'),
    ((SELECT id FROM breed WHERE description = 'Poodle'), (SELECT id FROM petType WHERE description = 'Dog'), 'Bailey', 4, 12.3, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Bulldog'), (SELECT id FROM petType WHERE description = 'Dog'), 'Charlie', 6, 18.6, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Abyssinian'), (SELECT id FROM petType WHERE description = 'Cat'), 'Molly', 3, 6.4, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Bengal'), (SELECT id FROM petType WHERE description = 'Cat'), 'Daisy', 3, 9.9, 'White'),
    ((SELECT id FROM breed WHERE description = 'Dachshund'), (SELECT id FROM petType WHERE description = 'Dog'), 'Rocky', 7, 20.1, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Burmese'), (SELECT id FROM petType WHERE description = 'Cat'), 'Sadie', 3, 7.2, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Pembroke Welsh Corgi'), (SELECT id FROM petType WHERE description = 'Dog'), 'Luna', 5, 11.8, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Australian Shepherd'), (SELECT id FROM petType WHERE description = 'Dog'), 'Cooper', 4, 14.5, 'White'),
    ((SELECT id FROM breed WHERE description = 'Devon Rex'), (SELECT id FROM petType WHERE description = 'Cat'), 'Bella', 3, 8.3, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Cavalier King Charles Spaniel'), (SELECT id FROM petType WHERE description = 'Dog'), 'Toby', 6, 16.2, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Himalayan'), (SELECT id FROM petType WHERE description = 'Cat'), 'Lola', 3, 9.1, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Boxer'), (SELECT id FROM petType WHERE description = 'Dog'), 'Jack', 4, 12.7, 'White'),
    ((SELECT id FROM breed WHERE description = 'Miniature Schnauzer'), (SELECT id FROM petType WHERE description = 'Dog'), 'Maggie', 7, 19.4, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Manx'), (SELECT id FROM petType WHERE description = 'Cat'), 'Duke', 3, 5.8, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Great Dane'), (SELECT id FROM petType WHERE description = 'Dog'), 'Chloe', 5, 13.9, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Persian'), (SELECT id FROM petType WHERE description = 'Cat'), 'Bear', 3, 9.5, 'White'),
    ((SELECT id FROM breed WHERE description = 'Siberian Husky'), (SELECT id FROM petType WHERE description = 'Dog'), 'Buster', 4, 15.3, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Pomeranian'), (SELECT id FROM petType WHERE description = 'Dog'), 'Zoe', 6, 17.8, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Ragdoll'), (SELECT id FROM petType WHERE description = 'Cat'), 'Riley', 3, 7.1, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Havanes'), (SELECT id FROM petType WHERE description = 'Dog'), 'Bailey', 5, 12.6, 'White'),
    ((SELECT id FROM breed WHERE description = 'English Springer Spaniel'), (SELECT id FROM petType WHERE description = 'Dog'), 'Sophie', 3, 10.2, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Shetland Sheepdog'), (SELECT id FROM petType WHERE description = 'Dog'), 'Lily', 4, 14.7, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Cocker Spaniel'), (SELECT id FROM petType WHERE description = 'Dog'), 'Shadow', 7, 18.9, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Russian Blue'), (SELECT id FROM petType WHERE description = 'Cat'), 'Max', 3, 6.5, 'White'),
    ((SELECT id FROM breed WHERE description = 'Domestic Shorthair'), (SELECT id FROM petType WHERE description = 'Dog'), 'Coco', 6, 16.3, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Domestic Longhair'), (SELECT id FROM petType WHERE description = 'Cat'), 'Milo', 3, 8.9, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'French Bulldog'), (SELECT id FROM petType WHERE description = 'Dog'), 'Rosie', 4, 13.5, 'Black'),
    ((SELECT id FROM breed WHERE description = 'German Shepherd'), (SELECT id FROM petType WHERE description = 'Dog'), 'Oreo', 5, 11.1, 'White'),
    ((SELECT id FROM breed WHERE description = 'Bombay'), (SELECT id FROM petType WHERE description = 'Cat'), 'Sam', 3, 7.8, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Rottweiler'), (SELECT id FROM petType WHERE description = 'Dog'), 'Ginger', 7, 19.6, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Cornish Rex'), (SELECT id FROM petType WHERE description = 'Cat'), 'Penny', 3, 9.3, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Beagle'), (SELECT id FROM petType WHERE description = 'Dog'), 'Rusty', 4, 14.2, 'White'),
    ((SELECT id FROM breed WHERE description = 'German Shorthaired Pointer'), (SELECT id FROM petType WHERE description = 'Dog'), 'Jake', 6, 17.7, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Maine Coon'), (SELECT id FROM petType WHERE description = 'Cat'), 'Holly', 3, 6.9, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Yorkshire Terrier'), (SELECT id FROM petType WHERE description = 'Dog'), 'Zeus', 5, 12.5, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Doberman Pinscher'), (SELECT id FROM petType WHERE description = 'Dog'), 'Sasha', 3, 10.8, 'White'),
    ((SELECT id FROM breed WHERE description = 'Cane Corso'), (SELECT id FROM petType WHERE description = 'Dog'), 'Sammy', 4, 14.4, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Shih Tzu'), (SELECT id FROM petType WHERE description = 'Dog'), 'Annie', 7, 19.1, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Scottish Fold'), (SELECT id FROM petType WHERE description = 'Cat'), 'Ruby', 3, 9.7, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Boston Terrier'), (SELECT id FROM petType WHERE description = 'Dog'), 'Milo', 6, 16.8, 'White'),
    ((SELECT id FROM breed WHERE description = 'Sphynx'), (SELECT id FROM petType WHERE description = 'Cat'), 'Leo', 3, 5.5, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Border Collie'), (SELECT id FROM petType WHERE description = 'Dog'), 'Princess', 5, 11.9, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'Turkish Van'), (SELECT id FROM petType WHERE description = 'Cat'), 'Cody', 3, 9.2, 'Black'),
    ((SELECT id FROM breed WHERE description = 'Siberian Husky'), (SELECT id FROM petType WHERE description = 'Dog'), 'Tucker', 4, 14.8, 'White'),
    ((SELECT id FROM breed WHERE description = 'Pembroke Welsh Corgi'), (SELECT id FROM petType WHERE description = 'Dog'), 'Emma', 7, 18.3, 'Golden'),
    ((SELECT id FROM breed WHERE description = 'Turkish Van'), (SELECT id FROM petType WHERE description = 'Cat'), 'Lady', 3, 7.6, 'Brown'),
    ((SELECT id FROM breed WHERE description = 'French Bulldog'), (SELECT id FROM petType WHERE description = 'Dog'), 'Sandy', 5, 13.4, 'Black');



INSERT INTO clientPet (clientId, petId) VALUES
    ((SELECT id FROM client WHERE firstName = 'Atticus' AND lastName = 'Atkinson' LIMIT 1), (SELECT id FROM pet WHERE name = 'Buster' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Atticus' AND lastName = 'Atkinson' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sammy' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Jordana' AND lastName = 'Beck' LIMIT 1), (SELECT id FROM pet WHERE name = 'Luna' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Jordana' AND lastName = 'Beck' LIMIT 1), (SELECT id FROM pet WHERE name = 'Zeus' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Stefanie' AND lastName = 'Brook' LIMIT 1), (SELECT id FROM pet WHERE name = 'Riley' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Nathalie' AND lastName = 'Chambers' LIMIT 1), (SELECT id FROM pet WHERE name = 'Annie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Nathalie' AND lastName = 'Chambers' LIMIT 1), (SELECT id FROM pet WHERE name = 'Buddy' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Avaya' AND lastName = 'Clarke' LIMIT 1), (SELECT id FROM pet WHERE name = 'Emma' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Avaya' AND lastName = 'Clarke' LIMIT 1), (SELECT id FROM pet WHERE name = 'Rocky' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Amari' AND lastName = 'Currie' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sophie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Bradlee' AND lastName = 'Esparza' LIMIT 1), (SELECT id FROM pet WHERE name = 'Holly' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Bradlee' AND lastName = 'Esparza' LIMIT 1), (SELECT id FROM pet WHERE name = 'Zoe' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Avaya' AND lastName = 'Gonzalez' LIMIT 1), (SELECT id FROM pet WHERE name = 'Bailey' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Avaya' AND lastName = 'Gonzalez' LIMIT 1), (SELECT id FROM pet WHERE name = 'Milo' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Yvonne' AND lastName = 'Goodman' LIMIT 1), (SELECT id FROM pet WHERE name = 'Rosie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Douglas' AND lastName = 'Guthrie' LIMIT 1), (SELECT id FROM pet WHERE name = 'Toby' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Remy' AND lastName = 'Hassan' LIMIT 1), (SELECT id FROM pet WHERE name = 'Oreo' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Kavita' AND lastName = 'Heath' LIMIT 1), (SELECT id FROM pet WHERE name = 'Maggie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Umaiza' AND lastName = 'Heath' LIMIT 1), (SELECT id FROM pet WHERE name = 'Jake' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Umaiza' AND lastName = 'Heath' LIMIT 1), (SELECT id FROM pet WHERE name = 'Lady' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Umaiza' AND lastName = 'Heath' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sasha' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Efe' AND lastName = 'House' LIMIT 1), (SELECT id FROM pet WHERE name = 'Bear' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Haniya' AND lastName = 'Kaiser' LIMIT 1), (SELECT id FROM pet WHERE name = 'Rusty' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Haniya' AND lastName = 'Kelly' LIMIT 1), (SELECT id FROM pet WHERE name = 'Milo' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Jonathan' AND lastName = 'Kumar' LIMIT 1), (SELECT id FROM pet WHERE name = 'Daisy' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Jonathan' AND lastName = 'Kumar' LIMIT 1), (SELECT id FROM pet WHERE name = 'Tucker' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Leilani' AND lastName = 'Leonard' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sam' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Dante' AND lastName = 'Mackenzie' LIMIT 1), (SELECT id FROM pet WHERE name = 'Max' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Dante' AND lastName = 'Mackenzie' LIMIT 1), (SELECT id FROM pet WHERE name = 'Ruby' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Beverley' AND lastName = 'Mckee' LIMIT 1), (SELECT id FROM pet WHERE name = 'Jack' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Beverley' AND lastName = 'Mckee' LIMIT 1), (SELECT id FROM pet WHERE name = 'Lily' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Beverley' AND lastName = 'Mckee' LIMIT 1), (SELECT id FROM pet WHERE name = 'Princess' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Angus' AND lastName = 'Neville' LIMIT 1), (SELECT id FROM pet WHERE name = 'Ginger' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Victor' AND lastName = 'Newman' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sandy' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Victor' AND lastName = 'Newman' LIMIT 1), (SELECT id FROM pet WHERE name = 'Shadow' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Igor' AND lastName = 'Prince' LIMIT 1), (SELECT id FROM pet WHERE name = 'Chloe' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Michelle' AND lastName = 'Ramirez' LIMIT 1), (SELECT id FROM pet WHERE name = 'Lucy' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Dante' AND lastName = 'Rennie' LIMIT 1), (SELECT id FROM pet WHERE name = 'Bella' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Brian' AND lastName = 'Roberts' LIMIT 1), (SELECT id FROM pet WHERE name = 'Cody' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Brian' AND lastName = 'Roberts' LIMIT 1), (SELECT id FROM pet WHERE name = 'Molly' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Alysha' AND lastName = 'Rollins' LIMIT 1), (SELECT id FROM pet WHERE name = 'Duke' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Dante' AND lastName = 'Rollins' LIMIT 1), (SELECT id FROM pet WHERE name = 'Leo' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Dante' AND lastName = 'Rollins' LIMIT 1), (SELECT id FROM pet WHERE name = 'Penny' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Paris' AND lastName = 'Solis' LIMIT 1), (SELECT id FROM pet WHERE name = 'Max' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Robin' AND lastName = 'Solis' LIMIT 1), (SELECT id FROM pet WHERE name = 'Charlie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Uzair' AND lastName = 'Sparrow' LIMIT 1), (SELECT id FROM pet WHERE name = 'Coco' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Grover' AND lastName = 'Squires' LIMIT 1), (SELECT id FROM pet WHERE name = 'Sadie' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Imaani' AND lastName = 'Wallace' LIMIT 1), (SELECT id FROM pet WHERE name = 'Lola' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Thomas' AND lastName = 'Waters' LIMIT 1), (SELECT id FROM pet WHERE name = 'Cooper' LIMIT 1)),
    ((SELECT id FROM client WHERE firstName = 'Meera' AND lastName = 'White' LIMIT 1), (SELECT id FROM pet WHERE name = 'Bailey' LIMIT 1));


SELECT p.name AS Name, pt.description AS Pet_Type, b.description AS Breed
FROM pet p
JOIN breed b ON p.breedId = b.id
JOIN petType pt ON p.petTypeId = pt.id
WHERE pt.description = 'Dog'
ORDER BY p.name;


SELECT p.name AS Name, pt.description AS Pet_Type, b.description AS Breed
FROM pet p
JOIN breed b ON p.breedId = b.id
JOIN petType pt ON p.petTypeId = pt.id
WHERE pt.description = 'Cat'
ORDER BY p.name;


SELECT
    p.name AS "Pet Name",
    pt.description AS "Pet Type",
    CONCAT(c.firstName, ' ', c.lastName) AS Owner,
    c.phone AS "Phone Number",
    c.email AS Email
FROM
    clientPet cp
JOIN
    client c ON cp.clientId = c.id
JOIN
    pet p ON cp.petId = p.id
JOIN
    petType pt ON p.petTypeId = pt.id
ORDER BY
    c.lastName,
    c.firstName,
    p.name;

