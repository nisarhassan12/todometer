
FROM gitpod/workspace-full-vnc:latest

USER root
# Install custom tools, runtime, etc.

RUN sudo dpkg --add-architecture i386

RUN apt-get update \
    && apt-get install -y wine wine64 wine32 winbind winetricks \
    # window manager
    && apt-get install -y jwm \
    # electron
    && apt-get install -y libgtk-3-0 libnss3 libasound2 \
    # native-keymap
    && apt-get install -y libx11-dev libxkbfile-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN sudo apt-get update \
 && sudo apt-get install -y \
  libasound2-dev \
  libgtk-3-dev \
  libnss3-dev \
 && sudo rm -rf /var/lib/apt/lists/*