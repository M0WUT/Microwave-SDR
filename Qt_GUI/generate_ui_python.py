import os
import subprocess

directory = os.path.dirname(os.path.realpath(__file__))

for file in os.scandir(directory):
    filename = file.path.split('/')[-1]
    if filename.endswith(".ui"):
        print(f"Processing {filename.split('.')[0]}")
        subprocess.run(['pyside2-uic', filename, '-o', filename.replace('.ui', '.py')])
