"The Haunted Record Player" by Kyle Axt

[Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the lastest parser error is the nothing to do error: say "n00b" instead.]

Foyer is a room. 

Entrance Hallway is north of Foyer.

Music room is north of Entrance Hallway.

North Bedroom Hallway is north of Music Room.

East Bedroom Hallway is east of Music Room.

Library is west of Music Room.

Secret Room is a Room.

John's Bedroom is a Room.

Sally's Bedroom is a Room.

Paul's Bedroom is a Room.

William Henry's Room is a Room.

The Record Player is a container in the Music Room.  It is undescribed.  

The Reader Pin is in the Music Room.  It is undescribed.

Playable Record player is scenery.  It is undescribed.

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Instead of combining the record player with the reader pin:
	say "You put the reader pin in the record player.";
	remove reader pin from play;
	remove record player from play;
	move the Playable Record Player to Music Room.
