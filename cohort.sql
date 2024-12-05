with 
  cte_1 as (
      select 
            user_pseudo_id, 
            date_trunc(subscription_start, week) as Start_week,
            date_trunc(subscription_end, week) as End_week 
      from `turing_data_analytics.subscriptions`
            ),
  cte_2 as (
      select user_pseudo_id ,Start_week,
              case when End_week > date_add(Start_week, INTERVAL 1 week) OR End_week IS null then 1 end as week_1,
              case when End_week > date_add(Start_week, INTERVAL 2 week) OR End_week IS null then 1 end as week_2,
              case when End_week > date_add(Start_week, INTERVAL 3 week) OR End_week IS null then 1 end as week_3,
              case when End_week > date_add(Start_week, INTERVAL 4 week) OR End_week IS null then 1 end as week_4,
              case when End_week > date_add(Start_week, INTERVAL 5 week) OR End_week IS null then 1 end as week_5,
              case when End_week > date_add(Start_week, INTERVAL 6 week) OR End_week IS null then 1 end as week_6
      from cte_1
            )

      select 
            Start_week, 
            count(user_pseudo_id) as users,
            (count(user_pseudo_id)/count(user_pseudo_id))*100 as week_0,
            sum(week_1)/count(user_pseudo_id)*100 as week_1,
            sum(week_2)/count(user_pseudo_id)*100 as week_2,
            sum(week_3)/count(user_pseudo_id)*100 as week_3,
            sum(week_4)/count(user_pseudo_id)*100 as week_4,
            sum(week_5)/count(user_pseudo_id)*100 as week_5,
            sum(week_6)/count(user_pseudo_id)*100 as week_6
      from cte_2   
      group by 1 