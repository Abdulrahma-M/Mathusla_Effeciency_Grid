

EventCount=50
TrackerRuns=1000

DataDir='/home/cfpuser/Mathusla/Single_track_studies/Grid'
Scripts='/home/cfpuser/Mathusla/Single_track_studies/Grid/Scripts'

simulation='/home/cfpuser/Mathusla/Mu_simulation_6Layers/Mu_simulation'
tracker='/home/cfpuser/Mathusla/Tracker/'

p_mg= 0.5
eta=0.6
phi=0.6
EventCount=50
 

for f in ${Scripts}/*.mac; do
	echo "simulation -j2 -o ${DataDir}/${f} -q -s ${f} p_mag $p_mg eta $eta phi $phi count $EventCount"
# Run tracker for $TrackerRuns times
	for f in ${DataDir}/${f}/*/*/run*.root; do
		for ((irun=0; irun<=TrackerRuns;irun++)); do
			echo "tracker $f `dirname ${f}`" 
         #Rename the output for a unique index
			echo "mv `dirname ${f}`/stat0.root `dirname ${f}`/stat_${f}.root"
		done
    done
done


