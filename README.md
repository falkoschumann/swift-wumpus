# Hunt the Wumpus

## User Stories

### Wumpus

*   As a Wumpus, I want to live in a cave with 20 rooms. Each room has 3 tunnels leading to other rooms. 
*   As a Wumpus, I want to sleep alone in any room.
*   As a Wumpus, I want to wake up, if the hunter enter my room or he shooting an arrow. If I wake, I move (P=0.75) one room or stay still (P=0.25). After that, if I am where the hunter are, I eat him and he lose.

### Hunter (Player)

*   As a hunter, I want to start alone in a any room.
*   As a hunter, I want to move one room.
*   As a hunter, I want to shoot a crooked arrow into a tunnel so that I can got the wumpus. I have 5 arrows. I lose when I run out. Each arrow can go from 1 to 5 rooms. If the arrow can't go that way (i.e. no tunnel) it moves at random to the next room. If the arrow hits the Wumpus, I win. I the arrow hit me, I lose.
*   As a player, I want to read instructions so that I understand the game.
*   As a player, I want to restart a finished game with same settings or new settings.

### Hazards

*   As a super bat, I want to start alone in any room. There are 2 super bats.
*   As a super bat, I want to grab the hunter and take him to some other room at random.
*   Two rooms have Bottomless pits in them. If the hunter go there, he fall into the pit and lose. 

### Warnings

*   As a hunter, I want to find the wumpus. If the Wumpus is one room away, I can smell it.
*   As a hunter, I want to the avoid super bats. If a super bat is one room away, I can hear flapping.
*   As a hunter, I want to the avoid bottomless pits. If a bottomles pit is one room away, I can feel a draft.
