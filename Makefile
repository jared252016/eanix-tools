# Define the installation target directory (system-wide)
INSTALL_DIR := /usr/local/bin

# Define the script names
SCRIPT1_NAME := rclone-to
SCRIPT2_NAME := docker-compose-update

# Define the script file locations
SCRIPT1_PATH := $(CURDIR)/bin/$(SCRIPT1_NAME)
SCRIPT2_PATH := $(CURDIR)/bin/$(SCRIPT2_NAME)

# Default target - show usage
default: help

# Help target to display usage instructions
help:
	@echo "Usage:"
	@echo "  make install    Install the scripts to $(INSTALL_DIR)"
	@echo "  make uninstall  Uninstall the scripts from $(INSTALL_DIR)"
	@echo "  make clean      Clean up any build artifacts"

# Install target: copy the scripts to $(INSTALL_DIR)
install:
	@echo "Installing dependencies..."
	@sudo apt install -y python3-tqdm
	@echo "Installing scripts to $(INSTALL_DIR)..."
	@sudo mkdir -p $(INSTALL_DIR)
	
	@sudo cp $(SCRIPT1_PATH) $(INSTALL_DIR)/$(SCRIPT1_NAME)
	@sudo chmod +x $(INSTALL_DIR)/$(SCRIPT1_NAME)
	@echo "$(SCRIPT1_NAME) installed successfully to $(INSTALL_DIR)/$(SCRIPT1_NAME)"
	
	@sudo cp $(SCRIPT2_PATH) $(INSTALL_DIR)/$(SCRIPT2_NAME)
	@sudo chmod +x $(INSTALL_DIR)/$(SCRIPT2_NAME)
	@echo "$(SCRIPT2_NAME) installed successfully to $(INSTALL_DIR)/$(SCRIPT2_NAME)"
	
	@echo "You can now use '$(SCRIPT1_NAME)' and '$(SCRIPT2_NAME)' globally from the command line"

# Uninstall target: remove the scripts from $(INSTALL_DIR)
uninstall:
	@echo "Uninstalling scripts from $(INSTALL_DIR)..."
	@sudo rm -f $(INSTALL_DIR)/$(SCRIPT1_NAME)
	@sudo rm -f $(INSTALL_DIR)/$(SCRIPT2_NAME)
	@echo "Scripts uninstalled successfully"

# Clean target: remove the installed scripts (not often used in this case)
clean:
	@echo "Cleaning up..."
	@rm -f $(INSTALL_DIR)/$(SCRIPT1_NAME)
	@rm -f $(INSTALL_DIR)/$(SCRIPT2_NAME)
	@echo "Clean up complete"
