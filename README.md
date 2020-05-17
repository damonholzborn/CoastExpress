# Coast Works

0-Coast MIDI settings manager for Max. It's conceptually similar to the Max for Live patch that Make Noise distributes, with the following differences:

* This patch is for regular Max, rather than for Max for Live. (Note that you can still use this even if you don't own Max. Max is available as a free 30-day fully functional demo, after that period it's save disabled, but that will not effect your ability to run Coast Works unless you want to make changes to the Max patch. This feature used to be available separately as the "run time version" but it's no longer separate.)
* Buttons instead of pull-down menus are used for easier interaction. 
* On-screen widgets (These are meant as convenience tools for testing, not really as a performance tool.):
    * A keyboard to send MIDI notes
    * A dial to send Mod Wheel
    * MIDI clock out
* The interface is reflected in Mira, so if you have an iPad you can interact with it remotely. 

There's not much in the way of documentation yet, but if you understand how the MIDI stuff works in the 0-Coast, it should be fairly self-explanatory. That said, there is tooltip help when you hover over any GUI widget and additional info in the Max Clue Window (Window > Clue Window), so you're not completely on your own. 

It saves the last settings so, when the patch is launched it will automatically send the last state. Don't forget that if you want to save the setting on the 0-Coast (so that state is maintained through a power cycle), you have to do so on the 0-Coast itself: hold PGM A to enter the Program Pages, then hold PGM B to save.