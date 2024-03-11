import subprocess

import datetime

import time



# List of bash scripts

bash_scripts = ['AutoVLCorange.sh', 'AutoVLCyellow.sh', 'AutoVLCpink.sh', 'AutoVLCpurple.sh']



def run_bash_script(script):

    # Execute the bash script

    subprocess.run(['bash', script])



def main():

    # Get the current week number

    current_week = datetime.datetime.now().isocalendar()[1]

    # Determine which script to run based on the current week

    script_index = (current_week - 11) % len(bash_scripts)

    # If the current week is the first week, run the Orange script

    script_to_run = bash_scripts[script_index]

    # Run the corresponding bash script

    run_bash_script(script_to_run)

    # Wait for the end of the week before running the next script

    time.sleep(604800)  # Sleep for 1 week (in seconds)



if __name__ == "__main__":

    main()
