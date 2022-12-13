-- Data prepapred by Davood Rafiei, drafiei@ualberta.ca
-- Wentao Lu





PRAGMA foreign_keys = ON;


insert into users values ('u30','Jesse Melia');
insert into users values ('u40','Tamanna Knapp');
insert into users values ('u50','Lamar Robles');
insert into users values ('u60','Isa Doyle');
insert into users values ('u70','Nyla Schofield');
insert into users values ('u80','Ekaterina Rosa, case insensitive pass');--test for Q2 case insensitive, should show up


insert into songs values (5, 'Wavin flag', 220);
insert into songs values (10, 'Nice for what', 210);
insert into songs values (11, 'Hold on, we are going home', 227);
insert into songs values (12, 'Heartbreaking Folk', 342);
insert into songs values (100, 'Tired Of crash', 34);
insert into songs values (101, ' Picture', 344);
insert into songs values (102, 'Naive satin', 42);
insert into songs values (103, 'Unexpected friday', 345);
insert into songs values (104, 'Autumn Of nights', 24);
insert into songs values (105, 'Passion Of energy', 12);
insert into songs values (106, 'sad Game', 96);
insert into songs values (107, 'dreamy club', 12);
insert into songs values (108, 'lost October', 98);
insert into songs values (109, 'Ultimate shimmer', 111);
insert into songs values (110, 'test song for Q1, should never shown 1', 112);--also for Q9
insert into songs values (111, 'test song for Q1, should never shown 2', 112);


insert into sessions values ('u30', 1, '2022-04-15', '2022-04-16');
insert into sessions values ('u30', 2, '2022-03-01', '2022-03-06');
insert into sessions values ('u40', 1, '2022-04-16', '2022-04-17');
insert into sessions values ('u40', 2, '2022-03-16', '2022-04-17');
insert into sessions values ('u40', 3, '2022-02-16', '2022-04-17');
insert into sessions values ('u50', 2, '2022-03-11', '2022-03-12');
insert into sessions values ('u50', 3, '2022-02-11', '2022-03-12');
insert into sessions values ('u50', 1, '2022-04-15', '2022-04-16');
insert into sessions values ('u60', 1, '2022-03-15', '2022-03-16');
insert into sessions values ('u60', 2, '2022-04-18', '2022-04-28');
insert into sessions values ('u60', 3, '2022-02-18', '2022-04-28');
insert into sessions values ('u80', 1, '2022-02-15', '2022-02-16');
insert into sessions values ('u80', 2, '2022-04-15', '2022-04-16');
insert into sessions values ('u70', 1, '2022-04-15', '2022-04-16');


insert into listen values ('u30', 1, 100, 2.0);
insert into listen values ('u30', 1, 5, 2.0);
insert into listen values ('u40', 1, 100, 2.0);
insert into listen values ('u40', 1, 5, 2.0);
insert into listen values ('u50', 1, 100, 2.0);
insert into listen values ('u50', 1, 101, 3.0);--Q6 top3   5, 100, 109, no ties
insert into listen values ('u50', 1, 5, 2.0);
insert into listen values ('u50', 1, 11, 2.7);
insert into listen values ('u50', 1, 12, 2.0);
insert into listen values ('u50', 1, 102, 3.0);
insert into listen values ('u50', 1, 103, 1.0);
insert into listen values ('u50', 1, 104, 3.9);
insert into listen values ('u50', 1, 105, 12.0);
insert into listen values ('u50', 1, 109, 9.0);
insert into listen values ('u60', 2, 5, 9.1);
insert into listen values ('u60', 2, 11, 7.1);
insert into listen values ('u60', 2, 109, 0.5);
insert into listen values ('u70', 1, 5, 0.5);
insert into listen values ('u70', 1, 109, 0.8);
insert into listen values ('u80', 2, 100, 0.5);
insert into listen values ('u80', 2, 108, 0.5);
--above is month 04

insert into listen values ('u30', 2, 100, 3.3);--Q6 top3   100,10,11, no ties
insert into listen values ('u40', 2, 100, 0.3);
insert into listen values ('u40', 2, 10, 1.9);
insert into listen values ('u40', 2, 11, 4.5);
insert into listen values ('u50', 2, 100, 1.2);
insert into listen values ('u50', 2, 10, 1.3);
insert into listen values ('u60', 1, 100, 2.0);
insert into listen values ('u60', 1, 101, 2.5);
insert into listen values ('u60', 1, 5, 2.0);
insert into listen values ('u60', 1, 11, 4.0);
insert into listen values ('u60', 1, 12, 2.2);
insert into listen values ('u60', 1, 10, 2.5);
insert into listen values ('u60', 1, 104, 2.0);
--above is month 03

insert into listen values ('u80', 1, 111, 0);--test for Q2 case insensitive, should show up
insert into listen values ('u80', 1, 5, 2.0);
insert into listen values ('u80', 1, 11, 2.0);
insert into listen values ('u60', 3, 11, 2.0);--Q6 top 3 108, 109, 11
insert into listen values ('u80', 1, 10, 2.0);
insert into listen values ('u80', 1, 109, 0.5);
insert into listen values ('u60', 3, 109, 2.0);
insert into listen values ('u50', 3, 109, 2.0);
insert into listen values ('u80', 1, 108, 0.5);
insert into listen values ('u60', 3, 108, 2.0);
insert into listen values ('u50', 3, 108, 0.5);
insert into listen values ('u40', 3, 108, 2.0);
--above is month 02


insert into playlists values (40, 'playlist for Q8', 'u50');--Q8 check at least 70%, 7 songs in playlist, u50, session 1 has 10 songs, 7/10
insert into playlists values (50, 'Another playlist for Q8', 'u60');



insert into plinclude values (40, 5, 1);
insert into plinclude values (40, 11, 2);
insert into plinclude values (40, 12, 3);
insert into plinclude values (40, 100, 4);
insert into plinclude values (40, 109, 5);
insert into plinclude values (40, 105, 6);
insert into plinclude values (40, 103, 7);
-- insert into plinclude values (40, 104, 8);
-- insert into plinclude values (40, 105, 9);
-- insert into plinclude values (40, 106, 10);

insert into plinclude values (50, 100, 1);
insert into plinclude values (50, 101, 2);
insert into plinclude values (50, 102, 3);
insert into plinclude values (50, 103, 4);
insert into plinclude values (50, 104, 5);
insert into plinclude values (50, 5, 6);
insert into plinclude values (50, 10, 7);
insert into plinclude values (50, 11, 8);
insert into plinclude values (50, 105, 9);
insert into plinclude values (50, 109, 10);


insert into artists values ('a10', 'Drake', 'Canada');
insert into artists values ('a20', 'Bob Ezrin', 'Canadian');
insert into artists values ('a30', 'Evie-Grace Goodman', 'Canada');
insert into artists values ('a40', 'Angelika Fuentes', 'Canadian');
insert into artists values ('a50', 'Freddy Duke', 'Austria');
insert into artists values ('a60', 'Korey Hensley', 'Austria');
insert into artists values ('a70', 'Rivka Sims', ' Australia');
insert into artists values ('a80', 'celine Dion', ' USA');--case insenstive for Q3
insert into artists values ('a90', 'Avril lavigne', ' UK');--case insenstive for Q3
insert into artists values ('a100', 'Q1 Case sensitive test fail1', 'canadian');--test for Q1 case senstive
insert into artists values ('a101', 'Q1 Case sensitive test fail2', 'CANADA');--test for Q2 case insensitive

insert into perform values ('a10', 5);
insert into perform values ('a20', 10);
insert into perform values ('a30', 11);
insert into perform values ('a40', 12);
insert into perform values ('a50', 106);
insert into perform values ('a50', 107);
insert into perform values ('a80', 100);
insert into perform values ('a90', 101);
insert into perform values ('a90', 102);
insert into perform values ('a90', 103);
insert into perform values ('a80', 104);
insert into perform values ('a80', 105);
insert into perform values ('a80', 108);
insert into perform values ('a80', 109);
insert into perform values ('a100', 110);--test for Q1 case sensitive
insert into perform values ('a101', 111);--test for Q2 case insensitive

