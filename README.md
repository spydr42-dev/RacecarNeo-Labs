## MIT RacerNeo-Simulation

This is an abbreviated version of the full setup but using anaconda (vs virtualenv)
and supporting only for the simulator environment (not an actual robot).

Controller mappings are adjusted to match a Playstation 5 Dualshock Controller
(Haptics are supported when connected via USB, but not via Blutetooth).

Includes the following additions to the upstream Unity NeoRacer Simulator:

- Default limiter is set to full speed (1.0 ~= 4m/s)
- Power-law based throttle & stearing response
- Adaptive (speed sensitive) stearing
- Chase-cam controlls on right joystick
- Adaptive lighting, HDR and bloom effects
- Tron Mode (X button)
- Hud toggle (Y botton)

### Prerequisites

The following applications must be installed:

- Anaconda (https://www.anaconda.com/download)
- Visual Studio Code (https://code.visualstudio.com/download)
- Unity (https://unity.com/). Requires registering for free account.

Install Visual Studio Code prior to Unity so it's picked up as the default code editor.
When first opening a C# file, VS Code will prompt to install additional extensions and the .NET framework.

### Repositories

Simulator: https://github.com/lenaglass/RacecarNeo-Simulator
Labs: https://github.com/lenaglass/RacecarNeo-Labs

To git clone from Visual Studio:

- F1: To open the command pallet
- Git:Clone
- Clone from Github

### Setup Simulator

- Open Unity Hub
- Open Project from File... (upper right on Projects tab)
- Locate and select your "RacecarNeo-Simulator" directory
- Install the recommended Unity Engine Version (to match with the project)

### Setup Labs Environment

- Run `setup_labs.sh` from within the RacecarNeo-Labs directory

To do this in Visual Studio:

- Terminal > New Terminal
- ./setup_labs.sh

This will create a "racecar" conda environment and install required dependencies.

### Running the Simulator

- Connect Dualshock controller (optionl)
- Open the RacecarNeo-Simulator project from Unity Hub
- From the Project panel (bottom) select `Scenes`
- From the Scene selector (bottom right) double click the `Main` scene
- Press Play (upper middle) to start the simulator

### Running Labs

- Open the lab notebook
- Run the lab as usual

Within the simulator use the following keys to control the script:

- Enter/Return: Starts / continues the script running
- Backspace/Delete: Returns to manual control
- Escape: Exits the rc.go() loop
