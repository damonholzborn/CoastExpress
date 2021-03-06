# Coast Express

0-Coast MIDI settings manager. There are two versions:

## For the Web

The easiest way to use Coast Express is the web verstion. Visit [https://ce.rustle.works](https://ce.rustle.works) in the Chrome browser to get started.

## For Max

The Max version is conceptually similar to the Max for Live patch that Make Noise distributes, with the following differences:

* This patch is for regular Max, rather than for Max for Live. (Note that you can still use this even if you don't own Max. Max is available as a free 30-day fully functional demo, after that period it's save disabled, but that will not effect your ability to run Coast Works unless you want to make changes to the Max patch. This feature used to be available separately as the "run time version" but it's no longer separate.)
* Buttons instead of pull-down menus are used for easier interaction.
* On-screen widgets (These are meant as convenience tools for testing, not really as a performance tool.):
    * A keyboard to send MIDI notes
    * A dial to send Mod Wheel
    * MIDI clock out
* The interface is reflected in Mira, so if you have an iPad you can interact with it remotely.

It saves the last settings so, when the patch is launched it will automatically send the last state. Don't forget that if you want to save the setting on the 0-Coast (so that state is maintained through a power cycle), you have to do so on the 0-Coast itself: hold PGM A to enter the Program Pages, then hold PGM B to save.

[Download the latest release](https://github.com/damonholzborn/CoastExpress/releases). Make sure you place the Coast Works folder in your Max search path (and restart Max, if open).