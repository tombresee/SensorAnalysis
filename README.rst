
Array Of Things (AoT) 
############################


|


* https://github.com/sagecontinuum/sage-ecr

* https://github.com/sagecontinuum

* https://github.com/sagecontinuum/SageScienceExamples/blob/master/Mobotix_RadTherm/Ground/All_Data_Plot.ipynb

* https://github.com/sagecontinuum/SageScienceExamples/blob/master/WiseNet_RadTherm_Camera/Read_And_Scale_From_4030TR.ipynb

* https://www.spec-sensors.com/

* https://www.research.northwestern.edu/world-watchers/

* https://datasmart.ash.harvard.edu/news/article/a-guide-to-chicagos-array-of-things-initiative-1190

* https://www.anl.gov/mcs/array-of-things

* https://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/index.php

* http://wa8.gl/data/

* https://github.com/waggle-sensor/beehive-server/tree/master/publishing-tools/projects

* Nodes:  https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/nodes.csv

* Sensors: https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/sensors.csv

* https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/sensors.csv

* Sensors list out ! 

* 


Introduction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


**Dataset II - Unsupervised Learning**

* **Plot**:  Take the list of sensor node GPS coordinates, and plot nicely into something like Leaflet or some visualization, this is an easy but nice to show visualization technique that will get us points.  Raw lat/long data files kept `here <https://github.com/tombresee/Michigan_Milestone_Initial_Work/blob/main/ENTER/RAW%20DATASET%20II/nodes.csv>`_.  The online arc gis like map from AoT is viewable `here <https://data.cityofchicago.org/Environment-Sustainable-Development/Array-of-Things-Locations-Map/2dng-xkng>`_, maybe we build our own version of this.  Should be easy to do, just taking lats/lons into some pretty picture.  


* **Great Lakes**:  Do some initial processing on the Michigan Great Lakes cluster, to build ability to later to ask for compute time for potential capstone extension analysis...

* **Heroku**:  This is not always easy to work on, need to start gradually adding some viz and verbage to https://michigan-milestone.herokuapp.com/ instance.  Incrementally learn/add to this.  Good opportunity for learning plotly/dash and advanced visualization here. 



|
|

SAGE
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* The SAGE Project - https://sagecontinuum.org/

* With Sage, advanced machine learning algorithms will be moved to “the edge.” Edge computing is a way to streamline data flowing from Internet of Things (IoT) devices by providing data analysis very near the site where the data is gathered. By linking small, powerful, computers directly to high-resolution cameras, air quality and weather sensors, and experimental Light Detection and Ranging (LIDAR) systems, this new distributed infrastructure will enable researchers to analyze and respond to data almost instantly. From early detection of wildfire smoke plumes in California to identifying ultrasonic calls of bats or the patterns of pedestrians in a busy crosswalk, Sage’s artificial intelligence-enabled sensors will give scientists a new tool to understand our planet.

* SAGE - https://sagecontinuum.github.io/sage-docs/docs/about/overview

* **SAGE** - `Access Sage Sensors <https://sagecontinuum.github.io/sage-docs/docs/tutorials/access-sage-sensors>`_

* https://www.mccormick.northwestern.edu/news/articles/2020/05/workshop-explores-potential-of-smart-sensors-for-environmental-monitoring.html



|
|



What is the Chicago AoT Program ? 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* The Array of Things (AoT) is an experimental urban measurement system comprising programmable, modular "nodes" with sensors and computing capability so that they can analyze data internally, for instance counting the number of vehicles at an intersection (and then deleting the image data rather than sending it to a data center). AoT nodes are installed in Chicago and a growing number of partner cities to collect real-time data on the city’s environment, infrastructure, and activity for research and public use. The concept of AoT is analogous to a “fitness tracker” for the city, measuring factors that impact livability in the urban environment, such as climate, air quality, and noise.  


* AoT is **now** an anchor partner in a new NSF-funded project called SAGE.

  *  In late 2018 the AoT team proposed a new effort to the National Science Foundation's Mid-Scale Research Infrastuructre program, with an expanded vision, building on all of the lessons learned from the AoT project and creating a new hardware and software infrastructure. Successfully funded with a start of October 2019, the new NSF-funded project, called SAGE: A Software-Defined Sensor Network, will result in a migration of AoT functions to new devices in 2021. SAGE is led by Northwestern University in partnership with the Discovery Partners Institute (University of Illinois), University of Chicago, Argonne National Laboratory, the University of Colorado, the University of California-San Diego, Northern Illinois University, Chicago's Lincoln Park Zoo, the University of Utah, and George Mason University.  



**Plot**:  Take the list of sensor node GPS coordinates, and plot nicely into something like Leaflet or some visualization, this is an easy but nice to show visualization technique that will get us points.  Raw lat/long data files kept `here <https://github.com/tombresee/Michigan_Milestone_Initial_Work/blob/main/ENTER/RAW%20DATASET%20II/nodes.csv>`_.  The online arc gis like map from AoT is viewable `here <https://data.cityofchicago.org/Environment-Sustainable-Development/Array-of-Things-Locations-Map/2dng-xkng>`_, maybe we build our own version of this.  Should be easy to do, just taking lats/lons into some pretty picture. 



|
|


Privacy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* **No active sensors have the capability to measure or identify individuals !** 

* Microphones and cameras in public spaces do not collect sensitive personally identifiable information (PII). Microphone and camera images are processed in near-real-time within the installed equipment, not transmitted or stored, with the exception of less than 1% of images at random times, saved for the purposes of image processing software calibration. Although these images will not contain PII, they will be controlled and protected with the same measures typically afforded PII. 

* History - During the 2016-2017 pilot period, the cameras will be used for the purposes of detecting and publishing (a) count/flow of pedestrians, (b) count and flow of various vehicle types, and (c) extent to which road surface is covered with standing water (flooding). This list will be updated prior to publishing new types of data from images.



|
|


The Data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SubFiles:
::
    data.csv.gz	    # massive compressed file of all sensor data values and readings
    nodes.csv	    # list of nodes in the dataset and their individual metadata
    README.md	    # An explaination of the database fields 
    sensors.csv	    # A list of active sensors and their pertinent metadata
    offsets.csv     # data.csv.gz file byte offsets

* Data Fields 

  * abc   


* What Data is Collected ?  

  * The nodes will initially measure temperature, barometric pressure, light, vibration, carbon monoxide, nitrogen dioxide, sulfur dioxide, ozone, ambient sound pressure, and pedestrian and vehicle traffic. Continued research and development is using machine learning to create sensors to monitor other urban factors of interest such as solar light intensity (visible, UV, and IR) and cloud cover (important to building energy management), and flooding and standing water.



|
|


Reference Links
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* http://arrayofthings.github.io/

* `AoT Master Dataset <https://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/index.php>`_ - We will use the massive file 'AoT_Chicago.complete.latest.tar', where `this <https://github.com/waggle-sensor/waggle/blob/master/data/README.md>`_ explains how to unzip it 

* `Current Sensor List <http://arrayofthings.github.io/node.html>`_ - List of exact sensor models used in current deployment 

* `Array of Things Overview <http://arrayofthings.github.io/>`_

* `Array of Things GPS Locations View <https://data.cityofchicago.org/Environment-Sustainable-Development/Array-of-Things-Locations-Map/2dng-xkng>`_ - City of Chicago

* `Array of Things Past Workshops <http://www.urbanccd.org/past-events>`_

* `Current AoT Node Architecture <http://arrayofthings.github.io/node.html>`_

* `Heroku Link <https://michigan-milestone.herokuapp.com/>`_ - Jupyter notebooks output visualizations 


.. figure:: https://github.com/tombresee/Michigan_Milestone_Initial_Work/raw/main/ENTER/IMAGES/AoT-Diagram.jpg
   :scale: 50 %
   :alt: map to buried treasure

   Current Architecture


|
|
|
|
|
|
|
|
|
|
|
|
|
|






































































 
  





|
|
|
|
|
|
|
|