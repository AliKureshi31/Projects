create database Sky_Sports;

use Sky_sports;

show tables;

#1-Import both the databases
select * from sky_sports1 ;

select * from `sky_sports 2` ss ;

#2-Write SQL Query to show all unique team names
select distinct(sky_sports1.team) from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team;

alter table  sql_skysports_project16875987300 rename to Sky_Sports1;

select * from sky_sports1;

#3-Write an SQL query to show name of team which has rank 1 from group 7 
select `rank`,team from sky_sports1 ss where `group`=7  limit 1;

#4-Write an sql query to show count of all teams 
select count(*) from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team;

#5- Write an SQL query to show matches_played by each team 
select matches_played,team from sky_sports1;

#6 -Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting columnas wins_percent 
select team,matches_played,(wins/matches_played)*100 as wins_percent from sky_sports1 ss;

select * from sky_sports1;
select * from `sky_sports 2` ss ;


#7-Write an SQL query to how which team has maximum goals_scored and their count 
select max(goals_scored),team from sky_sports1 group by team order by goals_scored desc; 

#8-Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team 
select team,round( sum(draws)/sum(matches_played)*100 ,2)as percent_of_draw from sky_sports1 ss group by team; 


#9-Write an SQL query to show which team has minimum goals_scored and their count 
select min(goals_scored),team from sky_sports1 group by team order by goals_scored asc;


#10- Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent 
select team,matches_played,(losses/matches_played) as losses_percent from sky_sports1 ss order by losses asc;

#11-Write an SQL query to show the average goal_difference 
select avg(goal_difference) from sky_sports1; 

#12-Write an SQL query to show name of the team where points are 0 
select team from sky_sports1 where points=0;

#13-Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded 
select * from sky_sports1 ss  where expected_goal_scored < exp_goal_conceded;

#14-Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5 
select exp_goal_difference from sky_sports1 where exp_goal_difference between -0.5 and 0.5;

#15-Write an SQL query to show all data in ascending order by exp_goal_difference_per_90 
select * from sky_sports1 order by exp_goal_difference_per_90 asc ;

#16-Write an SQL query to show team which has maximum number of players_used 
select team,players_used from `sky_sports 2` ss where players_used=(select max(players_used)  from `sky_sports 2` ss) ;

#17-Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team,avg_age from `sky_sports 2` ss order by avg_age asc;

#18-Write an sql query to show average possession of teams
select team,avg(possession) from `sky_sports 2` ss group by team ; 

#19-Write a SQL query to show team which has played atleast 5 games
select * from `sky_sports 2` ss where games>=5;

#20-Write an SQL query to show all data for which minutes is greater than 600 
select * from `sky_sports 2` ss where minutes>600;

#21-Write an SQL query to show team, goals, assists in ascending order by goals
select team,goals,assists from `sky_sports 2` ss  order by goals asc ;

#22-Write an SQL query to show team, pens_made, pens_att in descending order by pens_made 
select team,pens_made,pens_att from `sky_sports 2` ss order by pens_made desc ;

#23-Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team,cards_yellow,cards_red from `sky_sports 2` ss where cards_red=1 order by cards_yellow asc ;

#24-Write an SQL query to show team, goals_per90, assists_per90,goals_assists_per90 in descending order by goals_assists_per90 
select team,goals_per90,assists_per90,goals_assists_per90 from `sky_sports 2` ss  order by goals_assists_per90 desc ;

#25-Write an SQL query to show team, goals_pens_per90,goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
select team,goals_pens_per90,goals_assists_pens_per90 from `sky_sports 2` ss order by goals_assists_pens_per90 asc ;

#26-Write an SQL query to show team, shots, shots_on_target,shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team,shots,shots_on_target,shots_on_target_pct from `sky_sports 2` ss where shots_on_target_pct<30 order by shots_on_target_pct asc ;

#27-Write an SQL query to show team, shots_per90,shots_on_target_per90 for team Belgium
select team,shots_per90,shots_on_target_per90 from `sky_sports 2` where team='belgium';

#28- Write an SQL query to show team, goals_per_shot,goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team,goals_per_shot,goals_per_shot_on_target,average_shot_distance from `sky_sports 2` ss order by average_shot_distance desc ;

#29-Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team,errors,touches from `sky_sports 2` ss where errors=0 and touches<1500;

#30-Write an SQL query to show team, fouls which has maximum number of fouls 
select max(fouls),team from `sky_sports 2` ss group by team limit 1 ; 

select * from `sky_sports 2` ss ;

#31-Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team,offsides from `sky_sports 2` ss where offsides>20 or offsides<'10';

#32-Write an SQL query to show team, aerials_won, aerials_lost,aerials_won_pct in descending order by aerials_won_pct 
select team,aerials_won,aerials_lost,aerials_won_pct from `sky_sports 2` ss order by aerials_won_pct desc;

select * from sky_sports1;
select * from `sky_sports 2` ss ;


#33-Write an SQL query to show number of teams each group has!
select count(team),`group`  from sky_sports1 ss group by `group`; 

#34-Write a SQL query to show team names group 6 has
select team,`group`  from sky_sports1 ss where `group`="6"; 

#35-Write an SQL query to show Australia belongs to which group
select `group` from sky_sports1 ss where team="Australia";

#36-Write an SQL query to show group, average wins by each group 
select avg(wins),`group` from sky_sports1 ss inner join `sky_sports 2` on sky_sports1.team=ss.team group by avg(wins); 

#37-Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select `group`,max(expected_goal_scored) from sky_sports1 ss group by expected_goal_scored  order by expected_goal_scored asc ; 

#38-Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`,min(exp_goal_conceded) from sky_sports1 ss group by exp_goal_conceded order by exp_goal_conceded desc ; 

#39-Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 
select `group`,avg(exp_goal_difference_per_90) from sky_sports1 ss group by exp_goal_difference_per_90 order by exp_goal_difference_per_90 asc ; 

#40-Write an SQL query to show which team has equal number of goals_scored and goals_against
select * from sky_sports1 ss where goals_scored=goals_against;

select * from sky_sports1 ss ;
select * from `sky_sports 2` ss2 ;

#41-Write an SQL query to show which team has maximum players_used
select team,players_used from `sky_sports 2` ss where players_used=(select max(players_used)  from `sky_sports 2` ss) ;

select * from sky_sports1 ;
select * from `sky_sports 2` ss;

#43-Write an SQL query to show all data of group_stats in ascending order BY points 
select * from sky_sports1 ss order by points asc;


#44-Write an SQL query to show ALL UNIQUE team in ascending order by team 
select distinct(team) from sky_sports1 ss order by team asc;

#45- Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age.
select avg_age from `sky_sports 2` ss order by avg_age desc ;

#46- Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls. 
select sum(fouls),`group` from sky_sports1  inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by fouls order by fouls asc  ; 


#47-Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select sum(games),`group` from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by games order by games desc;

select * from sky_sports1 ss ;
select * from `sky_sports 2` ss ;

#48-Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select sum(players_used),`group` from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by `group`  order by  sum(players_used) asc ;


#49-Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides
select sum(offsides),`group` from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by offsides order by sum(offsides) asc;

#50-Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct. 
select avg(passes_pct),`group` from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by passes_pct order by passes_pct desc  ;

#51-Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90. 
select avg(goals_per90), `group` from sky_sports1 inner join `sky_sports 2` ss on sky_sports1.team=ss.team group by goals_per90 order by goals_per90 asc ;