"The Haunted Record Player" by Kyle Axt

When play begins:
	say "You have entered the abandoned house of Sir William Henry, a deceased business man.  Legend has it that he was murdered in his house and his body still lies in his room.  You go in the house alone, pushed in by your friends.  And they are refusing to let you out. "

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error: say "please don't cheat" instead.

Foyer is a room. The description is "The entranceway to the house.  The old wooden floor is dusty and there is a coat hanger that looks like its falling apart.  There's also an old painting hung on the wall.  There is a hallway to the north.

You can still hear your friends talking outside the house.
"

Coat Hanger is scenery in the Foyer.  The description is "An old broken coat hanger."
Painting is scenery in the Foyer.  The description is "It appears to be an old painting of a record player."

South Hallway is north of Foyer.  The description is "This is the hallway that leads to the rest of the house.  There is a table here with a vase on it.

There is a room to the north and south."

The Table is scenery in the South hallway.  The description is "A sturdy wooden table.  Surprising that it's still standing after so long."
The flower vase is in the South hallway.  It is undescribed.  The description is "A fragile vase.  If you drop it, it will probably break.  "

Instead of taking vase:
	say "When you picked it up, it slid out of your hands and shattered into a million pieces on the floor.  Good thing no one lives here anymore.  Or maybe someone does?";
	remove vase from play.

Music Room is north of South Hallway.  The description is "This room is filled with a bunch of random instruments.  There is a record player in the middle.  It seems to be pretty important since it is in the center of the room. 

There is a room to the west and a hallway to the north south, and east."

Instruments is scenery in the Music Room.  The description is "There's a piano, tuba, a few trumpets, a clarinet, a guitar, trombone, and french horn.  Thats just counting the ones that you know.  There are a bunch more that you can't even name.  In the corner is a record.  Maybe you can play it."
[****]
Blue Record is in the Music Room.  It is undescribed.  Blue Record can be played or unplayed.  It is unplayed.  The description is "It's a record.  You should try playing it with the record player."


North Hallway is north of Music Room.  The description is "The passageway to the north says, to William Henry's Room."

William Henry's Room is a Room.  It is north of the North Hallway.  The description is "This is the room of the former owner of the house.  It's said that he was murdered in this very room, but no one really knows for sure.  

Everything in his bedroom is covered in dust.  His bed in in the room along with a desk."

William Henry's Bed is scenery in William Henry's Room.  It is undescribed.  The description is "The bed is left how it was left nearly one hundred years ago - unmade."

William Henry's Desk is scenery in William Henry's Room.  It is undescribed.  The description is "The desk looks like it was left in a hurry.  There's still a cup on the table with some liquid inside it.  Weird how it was left in such a hurry."

The Ghost is a male man in William Henry's Room.  The description of The Ghost is "This is the first ghost you've ever seen and he's standing right in front of you.  You're not scared because he doesn't seem like he'll try to attack you.  Maybe you can ask him some questions.  (ask about his identity and ask ghost how do I get out)"

Instead of asking The Ghost about "the Ghosts identity":
	say "I'm the ghost of William Henry.".

Instead of asking The Ghost about "how do I get out":
	say "Oh! You were trapped in here.  That tends to happen a lot now days.  I really wish people wouldn't do that.  I'll move you to the exit now.";
	Move player to cellar;
	Move the Ghost to the cellar.


Guest Room is a room.  It is west of North Hallway.  The description is "Everything in here looks really old and dusty.  There's a bed and a dresser here, but they're both falling apart."

Dresser is a container in the Guest Room.  The Dresser can be opened or unopened.  It is closed.  It is undescribed.  The description is "An old wooden dresser.  It looks to be from the early 1900s.  It's nearly falling apart from all the termites that lived in this thing."
[****]
Yellow Record is in the Dresser.  It is undescribed.  Yellow Record can be played or unplayed.  It is unplayed.  The description is "It's a record.  You should try playing it with the record player."


East Hallway is east of Music Room.  The description is "Just an Empty Room."

Storage Room is east of East Hallway.  The description is "Theres a bunch of boxes in this room but one thing catches your eye - a record.  It is on top of one of the boxes in the room."
[****]
Red Record is in the Storage Room.  It is undescribed.  Red Record can be played or unplayed.  It is unplayed.  The description is "It's a record.  You should try playing it on the record player."


Library is west of Music Room.  The description is "This room is full of books.  Well... It is a library."

Bookshelf is scenery in the Music Room.  The description is "There are books on the bookshelf.  "

The Cellar is a Room.  The description is "There's a wooden door to the west.  It looks like you can get out of this old house." 

Outside is a Room west of The Cellar.


The Not Working Record Player is a container in the Music Room. It is undescribed.  The description is "It's an old record player.  You might be able to play some music with this thing after you find a pin to put in this thing."

The Reader Pin is in the Not working record player.  The description is "You're gonna need to put this into the Record Player to make it work.  (combine)"

The Room Sized Box is a room. 

Playable Record player is scenery in The Room Sized Box.  It is undescribed.  The description is "You can play records with this."

Playing it with is an action applying to two things.
Understand "play [something] with [something]" as playing it with.

Combining it with is an action applying to two things.
Understand "combine [something] with [something]" as combining it with.

Putting it in is an action applying to two things.
Understand "put [something] in [something]" as putting it in.

Instead of putting the reader pin in the not working record player:
	say "You put the reader pin in the record player.";
	remove reader pin from play;
	remove Not working record player from play;
	move the Playable Record Player to Music Room.

Instead of combining the not working record player with the reader pin:
	say "You put the reader pin in the record player.";
	remove reader pin from play;
	remove Not working record player from play;
	move the Playable Record Player to Music Room.
	
Instead of combining the reader pin with the not working record player:
	say "You put the reader pin in the record player.  The record player can now play records.";
	remove reader pin from play;
	remove Not working record player from play;
	move the Playable Record Player to Music Room.

Instead of playing the Blue Record with the record player:
	say "You heard a loud sound coming from the East.  Why don't you go check it out?";
	now The description of the East Hallway is "There is a room to the east.  From the outside, it looks to be a storage room.";
	now the Blue Record is played;
	say "The Blue Record disappeared after the song finished.  Where could it have gone?";
	move Blue Record to The Room Sized Box.

Instead of playing the Red Record with the Record player:
	say "You heard a loud noise coming from the North.  You should go see what happened.";
	now The description of the North Hallway is "You can go west, to the guest room, and the door to William Henry's room seems to be locked.";
	now the Red Record is played;
	say "The Red Record disappeared after the song finished.  Where could it have gone?";
	move Red Record to The Room Sized Box.

Instead of playing the Yellow Record with the Record player:
	say "You heard a loud noise coming from the North.  You should go see what happened.";
	now The description of the North Hallway is "You can go west, to the guest room.  The door to William Henry's Room isn't there anymore.  You can walk right in.";
	now the Yellow Record is played;
	say "The Yellow Record disappeared after the song finished.  Where could it have gone?";
	move Red Record to The Room Sized Box.


Instead of going east in East Hallway:
	if Blue Record is unplayed:
		say "That's a wall";
	Otherwise:
		move player to Storage Room.

Instead of going west in North Hallway:
	if Red Record is unplayed:
		say "That's a wall";
	Otherwise:
		move player to Guest Room.
		
Instead of going north in North Hallway:
	if Yellow Record is unplayed:
		say "That door is locked.  You can't get in.";
	Otherwise:
		move player to William Henry's Room.	


Every turn rule:
	If player is in Outside:
		End the story finally saying "You got out."




