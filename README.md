# **Beyod**
##**Connect Through Music 🎧**
---
A SwiftUI App that sends a notifies users whenever they come in the vicinity of a person listening to the same song as them
Born from the desire to build new bridges to connect ourselves with the routines of the people that surrounds and acompany us along the day
- Frameworks to be used:
  1. *iOS Multipeer Connectivity* 
  2. *MediaPlayer*
  3. *WebKit*
---      
- How does it works?
 Beyod will attempt to create a session with other iOS devices for both recieve and send information with any other user of the app, this is handled by *iOS Multipeer Connectivity*.
 In this way, whenever two or more users that are listening to music come in a range of approximately 100 meters (the active range of the *iOS Multipeer Connectivity* framework) their devices will
share and recieve the song being played, in the event of a match then both of said users will get a notification of the connection, adding the song to an album of "Matched Songs" to be reviewed later
- How deos it look like?
  I was interested in putting a little bit more of effort regarding the design and overall feel of the App, that is why, taking inspiration from experiences like [BlackBox](https://www.blackboxpuzzles.com) I
  decided to create a minimal home screen. A black background with an animated MeshGradient that will reflect how many listeners are found in the area (wether these listeners are matching with the user's song or not).
  The more listeners, the more active the MeshGradient becomes.
  ![AppDemo](https://github.com/user-attachments/assets/b3929ca7-6b3e-47ac-bb6e-df3d9ca45652)
  When a match is found, a bright spark will be shown in the general direction from the user that is listening to the same song as you are!
  



