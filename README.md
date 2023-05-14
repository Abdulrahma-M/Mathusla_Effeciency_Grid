# Mathusla_Effeciency_Grid
Code to generate an effeciancy grid withing the Mathusla decay volume as part of the single track studies
the python file Grid.py generates 1000 Geant4 simulation scripts each for a point in the 10x10x10 decay volume grid
the simulation scripts should then be fed into the MATHUSLA Mu-Simulation as an input with a specific (eta,phi,p_mag,event_count) to give "event_count" single tracks for every point in the 10x10x10 grid.
