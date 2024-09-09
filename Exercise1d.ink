/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Late morning, 2 Noon, 3 afternoon, 4 evening, 5 night
VAR mango = 0

-> seashore

== seashore ==
You are laying in a hammock on the beach. Behind you is the hut you live in. 

It is { advance_time() }
You are hungry 
+ [Take a stroll down the beach] -> beach2


==seashore1==
You are back in front of your hut.
It is { advance_time() }
* {time == 0} [Go lay down in your hammack to take a nap] ->Nap
* {time == 1} [Go lay down in your hammack to take a nap] ->Nap
* {time == 2} [Go lay down in your hammack to take a nap] ->Nap
* {time == 3} [Go lay down in your hammack to take a nap] ->Nap
* {time == 4}[You realize how tired you are, you decide to retreat to your hut for the night] ->hut
* { time == 5}[You realize how tired you are, you decide to retreat to your hut for the night] ->hut

== Nap== 
You doze off to sleep as you listen to the sound of the waves
->END

==hut==
You have made it home safely. Goodnight!
->END

== beach2 ==
You are walking along the shore enjoying the beautiful day
* { time == 0 } [Pick up some seashells] -> shells
* { time == 1 } [Pick up some seashells] -> shells
* { time == 2 } [Pick up some seashells] -> shells
* { time == 3 } [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore1
+ [Stroll further down the beach]-> beach3A  

== shells ==
You pick up the shells 
-> beach2

== beach3B ==
You are headed back to the hut you live in
+ [Stop to rest] ->Rest
+ [Continue home]->seashore1

==Rest==
You sit down to rest for a bit. Your stomach grumbles, reminding you that you are still hungry
It is { advance_time ()}
*{time == 1}->eat_fruit
*{time == 2}->eat_fruit
*{time == 3}->eat_fruit
*{time == 4}->eat_fruit
*{time == 5}->eat_fruit

==eat_fruit== 
You decide its time for a snack
You have {mango} mangos
+ [eat mango] ->ate_fruit


==ate_fruit==
You are satisfied with your snack and no longer hungry
~ mango = mango - 1
You have {mango} mangos
+[Head home] ->seashore1

== beach3A ==
As you continue along, you see some fruit trees
It is { advance_time ()}
+ [Go pick some fruit] ->pick_fruit
+ [Stroll back up the beach] ->beach2

==pick_fruit==
As you walk closer you see mango trees
You have {mango} mangos
+[Pick a mango] ->picked_fruit
+[head home] ->beach3B


==picked_fruit==
~ mango = mango + 1
you now have {mango} mangos 
+[pick another]->picked_fruit
+[head home]->beach3B



== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 5:
            ~ time = 0
    }    
    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Late morning"
        
        - time == 2:
            ~ return "Noon"
            
        - time == 3:     
            ~ return "Afternoon"
            
        - time == 4:     
            ~ return "evening"
            
        - time == 5:     
            ~ return "night"
    }
    
    ~ return time
    
    
    
