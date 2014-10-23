"The Haunted Record Player" by Kyle Axt

[Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the lastest parser error is the nothing to do error: say "n00b" instead.]

Foyer is a room. 

Coat Hanger is scenery in the Foyer.  The description is "Coat Hanger"
Painting is scenery in 

Entrance Hallway is north of Foyer.

The Table is scenery in the entrance hallway.  The description is "Table"
The flower vase is in the entrance hallway.  The description is "Theres a dead flower in here."

Music room is north of Entrance Hallway.

[Piano, Tuba, Theremin, ]

North Bedroom Hallway is north of Music Room.

East Bedroom Hallway is east of Music Room.

Library is west of Music Room.

Bookshelf is scenery in the Music Room.  The description is "There are books on the bookshelf.  "

Secret Room is a Room.  The description is "The halls are made of stone."



John's Bedroom is a Room.

Sally's Bedroom is a Room.

Paul's Bedroom is a Room.

William Henry's Room is a Room.

The Not Working Record Player is a container in the Music Room.  It is undescribed.  

The Reader Pin is in the Music Room.  It is undescribed.

The Room Sized Box is a room. 

Playable Record player is scenery in The Room SIzed Box.  It is undescribed. 

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining the not working record player with the reader pin:
	say "You put the reader pin in the record player.";
	remove reader pin from play;
	remove Not working record player from play;
	move the Playable Record Player to Music Room.
	
Instead of combining the reader pin with the not working record player:
	say "You put the reader pin in the record player.";
	remove reader pin from play;
	remove Not working record player from play;
	move the Playable Record Player to Music Room.

