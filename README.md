## MIT RacerNeo Labs Environment

This is an abbreviated version of the full MIT Beaver Works setup but using anaconda (vs virtualenv)
and supporting only simulation (not an actual racecar).

There are some changes to the Unity based Simulator:

- Default limiter is set to full speed (1.0 ~= 4m/s)
- Controller mappings are for PS5 Dualshock
- Haptics are supported (USB controller connection only)
- Power-law based throttle & steering response
- Adaptive (speed sensitive) steering
- Chase-cam controls on right joystick / cursor keys
- Adaptive lighting, HDR and bloom effects
- Tron Mode (X button)
- HUD toggle (Y botton)

### Prerequisites

The following applications must be installed:

- Anaconda (https://www.anaconda.com/download)
- Visual Studio Code (https://code.visualstudio.com/download)
- Unity (https://unity.com/). Requires registering for free account.

Install Visual Studio Code prior to Unity, so it's picked up as the default code editor.
When first opening a C# file, VS Code will prompt to install additional extensions and the .NET framework.

### Repositories

The simulator is a Unity project. This accepts connections from the labs on a special UDP port, returning simulated camera, lidar, and IMU data to the labs (python scripts).

- Simulator: https://github.com/lenaglass/RacecarNeo-Simulator

The labs include Jupyter notebooks a and Python scripts.

- Labs: https://github.com/lenaglass/RacecarNeo-Labs

To clone from inside Visual Studio:

- F1: To open the command pallet
- Git:Clone
- Clone from Github

Repeat for both the simulator and labs repos.

### Setup: Simulator

- Open Unity Hub
- Projects Tab: Add > Add Project from Disk... (upper right on Projects tab)
- Locate and select `RacecarSim` within the `RacecarNeo-Simulator` directory
- Install the recommended Unity Engine Version for the project

### Running the Simulator

Test the simulator before setting up the labs.

- Connect Dualshock controller (optional)
- In Unity Hub: Projets > RacecarNeo-Simulator
- From the Project panel (bottom) select `Scenes`
- From the Scene selector (bottom right) double click `Main`
- Press Play (upper middle) to start the simulator
- Select one of the simulation maps

### Setup: Labs

- Open a shell
- cd to the `RacecarNeo-Labs` directory
- Run `bash setup_labs.sh`

This will create the "racecar" conda environment and install required dependencies for the labs.

### Running Labs

- Open the lab notebook
- Set to use the simulator with an `isSimulator=true` line near the top of notebook or python script, or by passing `True` to rc.go()
- Run the lab as usual

When the main rc.go() loop is running, switch to the simulator and use the following keys to run/stop the script and observe how it controls the racecar:

- Enter/Return: Starts the script running
- Backspace/Delete: Returns to manual (joystick/keyboard) control
- Escape: Exits the rc.go() loop
