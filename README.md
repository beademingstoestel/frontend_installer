
# Installer instructions for the frontend (mongo database, nodejs server and GUI and c# sharp daemon)

## Linux

### Prerequisites

- docker and docker-compose
- chromium browser

### How to install

#### step 1: making sure the serial port is renamed to ventilator

Download the [99-arduino.rules](https://github.com/beademingstoestel/frontend_installer/blob/master/99-arduino.rules "99-arduino.rules") file found in this repository and execute following commands with sudo:

- install --user=root --group=root ./99-arduino.rules /etc/udev/rules.d
- udevadm control --reload

Now plugin the arduino running the [arduino PID code](https://github.com/beademingstoestel/arduino_pid_code) and you should see an entry under /dev called ventilator.

#### step 2: run docker-compose

Download the [docker-compose.yml](https://github.com/beademingstoestel/frontend_installer/blob/master/docker-compose.yml) file and in the directory where the file is found run as sudo:

- docker-compose up

Access the GUI by surfing to http://localhost:3001

### Updating to a new version

In the directory containing [docker-compose.yml](https://github.com/beademingstoestel/frontend_installer/blob/master/docker-compose.yml) file run following commands:

- docker-compose pull
- docker-compose up --force-recreate

You now have the latest version of the software.

## Windows

### Prerequisites

- [docker ce desktop for windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows) 
- chromium browser

### How to install

#### step 1: run docker-compose

Download the [docker-compose-windows.yml](https://github.com/beademingstoestel/frontend_installer/blob/master/docker-compose-windows.yml) file and rename it to docker-compose.yml

Run docker-compose up in the directory containing the yml file.

#### step 2: download and run the daemon

Download the windows build of the daemon from [https://github.com/beademingstoestel/csharp_daemon/releases](https://github.com/beademingstoestel/csharp_daemon/releases) and run the executable found in the directory.

Access the GUI by surfing to http://localhost:3001

### Updating to a new version

In the directory containing [docker-compose.yml](https://github.com/beademingstoestel/frontend_installer/blob/master/docker-compose.yml) file run following commands:

- docker-compose pull
- docker-compose up --force-recreate

Download the latest version of the daemon from [https://github.com/beademingstoestel/csharp_daemon/releases](https://github.com/beademingstoestel/csharp_daemon/releases).

You now have the latest version of the software.
