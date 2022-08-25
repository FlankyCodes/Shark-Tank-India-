-- Total number of Episodes

SELECT COUNT(DISTINCT episode_number) AS Total_Episodes FROM project.data;
SELECT MAX(episode_number) AS Total_Episodes FROM project.data;

-- Total number of Pitches 

SELECT COUNT(pitch_number) AS Total_Pitches FROM project.data;
SELECT MAX(pitch_number) AS Total_Pitches FROM project.data;

-- Pitches Converted

SELECT COUNT(deal) AS Pitches_Converted FROM project.data WHERE deal = 1;

-- Name of the Companies Converted

SELECT episode_number, pitch_number, idea AS Idea, brand_name AS Companies_Converted FROM project.data WHERE deal = 1;

-- Company Asked Amount Vs Deal Amount

SELECT brand_name, pitcher_ask_amount AS ask_amount_in_lakhs, deal_amount AS deal_amount_in_lakhs FROM project.data 
WHERE deal_amount > 0;

-- Company Ask Equity Vs Deal Equity

SELECT brand_name, ask_equity, deal_equity FROM project.data WHERE deal_equity > 0;

-- Success Percentage 

SELECT (SUM(deal) / COUNT(deal)) * 100 AS Success_Percentage FROM project.data;

-- Comapany With No deal

SELECT episode_number, pitch_number, brand_name, idea FROM project.data WHERE deal = 0;

-- Total Invested Amount by Sharks

SELECT sum(deal_amount) AS Amount_Invested_In_Lakhs FROM project.data;

-- Average Equity taken by Sharks

SELECT ROUND(AVG(deal_equity), 2) AS Avg_Equity FROM project.data WHERE deal_equity > 0;

-- Average Equity asked by brands

SELECT ROUND(AVG(ask_equity), 2) AS Avg_Ask_Equity FROM project.data;

-- Highest Amount Invested in a Company by Sharks

SELECT episode_number, pitch_number, idea, brand_name, deal_amount AS Highest_Amount_Invested_In_Lakhs FROM project.data 
WHERE deal_amount = (SELECT MAX(deal_amount) FROM project.data);

-- Highest Equity Taken By Sharks

SELECT episode_number, pitch_number, idea, brand_name, deal_equity AS Highest_Equity_Taken FROM project.data
WHERE deal_equity = (SELECT MAX(deal_equity) FROM project.data);

-- Average Amount Invested In Per Deal

SELECT ROUND(AVG(deal_amount), 2) AS Avg_Amount_Invested_In_Lakhs FROM project.data WHERE deal_amount > 0;

-- Companies Invested by Ashneer

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE ashneer_deal = 1;

-- Companies Invested by Anupam

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE anupam_deal = 1;

-- Companies Invested by Aman

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE aman_deal = 1;

-- Companies Invested by Namita

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE namita_deal = 1;

-- Companies Invested by Vineeta

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE vineeta_deal = 1;

-- Companies Invested by Peyush

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE peyush_deal = 1;

-- Companies Invested by Ghazal

SELECT episode_number, pitch_number, brand_name, amount_per_shark AS amount_invested_in_lakhs, equity_per_shark AS equity_taken FROM project.data WHERE ghazal_deal = 1;

-- Total Sharks present in the deal

SELECT brand_name, ashneer_deal, anupam_deal, aman_deal, namita_deal, vineeta_deal, peyush_deal, ghazal_deal, 
total_sharks_invested, amount_per_shark AS amount_per_shark_in_lakhs, equity_per_shark FROM project.data WHERE 
(ashneer_deal = 1 OR anupam_deal = 1 OR aman_deal = 1 OR namita_deal = 1 OR vineeta_deal = 1 OR peyush_deal = 1 
OR ghazal_deal = 1);















