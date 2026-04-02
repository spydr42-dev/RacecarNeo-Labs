## MIT RacerNeo Simulation+Labs Environment

This is an abbreviated version of the full setup using anaconda (vs virtualenv)
and supporting only simulation (not an actual racecar).

- Controller mappings are adjusted for a Playstation 5 Dualshock Controller
- Haptics are supported if connected via USB (not Blutetooth).

Includes the following additions to the upstream:

- Default limiter set to full speed (1.0 ~= 4m/s)
- Power-law based throttle & steering response
- Adaptive (speed sensitive) steering
- Chase-cam controls on right joystick / cursor keys
- Adaptive lighting, HDR and bloom effects
- Tron Mode (X button)
- Hud toggle (Y botton)

### Prerequisites

The following applications must be installed:

- Anaconda (https://www.anaconda.com/download)
- Visual Studio Code (https://code.visualstudio.com/download)
- Unity (https://unity.com/). Requires registering for free account.

Install Visual Studio Code prior to Unity, so it's picked up as the default code editor.
When first opening a C# file, VS Code will prompt to install additional extensions and the .NET framework.

### Repositories

The simulator is based on a Unity project. It accepts connections from the labs on a special UDP port, returning simulated camera, lidar, and IMU data.

- Simulator: https://github.com/lenaglass/RacecarNeo-Simulator

The labs are Jupyter notebooks plus python scripts.

- Labs: https://github.com/lenaglass/RacecarNeo-Labs

To clone from inside Visual Studio:

- F1: To open the command pallet
- Git:Clone
- Clone from Github

Repeat for both the simulator and labs repos.

### Setup: Simulator

- Open Unity Hub
- Open Project from File... (upper right on Projects tab)
- Locate and select the `RacecarNeo-Simulator` directory
- Install the recommended Unity Engine Version for the project

### Running the Simulator

Test the simulator before setting up the labs.

- Connect Dualshock controller (optionl)
- Open Projets > RacecarNeo-Simulator from Unity Hub
- From the Project panel (bottom) select `Scenes`
- From the Scene selector (bottom right) double click `Main`
- Press Play (upper middle) to start the simulator
- Select one of the simulations

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
