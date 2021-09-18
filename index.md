##  Array of Things (AoT)

Towards a deeper understanding of IoT Unsupervised Learning techniques and sensor KPI parameter anomaly detection for AI Edge Computing tactics


<br>

<dl>
<dt>Date</dt>
<dd>September 2021</dd>
<dt>Project Link</dt>
<dd><a href='https://tombresee.github.io/SensorAnalysis//'>https://tombresee.github.io/SensorAnalysis/</a></dd>
<dt>Authors</dt>
<dd>Tom Bresee, Michael Phillips</dd>
</dl>



<br>

##  Table of Contents

<!-- TOC depthFrom:1 depthTo:3 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Table of Contents](#table-of-contents)
- [Motivation](#motivation) 
- [References](#references) 
- [Nodes Network](#nodes-network) 
- [Malfunction](#malfunction) 
- [What Data is Collected ?](#what-data-is-collected-?) 
- [Waggle](#waggle) 
- [Left 2 Do](#left-2-do) 
<!-- /TOC -->

<br>


##  Motivation
- As a continuing investigation into the world of real-world sensor analytics, we focus on a massive Internet of Things (IoT) cluster known as the [Array of Things](http://arrayofthings.github.io/), hosted in the city of Chicago and part of a continuing effort for `smart city` enablement.  It is expected that smart city initiatives will progress, as Chicago takes the lead in deploying its AoT cluster.  In recent years, the smart city concept has gone from theoretical to actual live production networks.  We leverage unsupervised machine learning tactics to dive deeper into a large set of this AoT data. 
* _The IoT sector is expected to be a billion dollar market as advances in computing, lower cost sensors, and **5G** cellular technology progress. We anticipate more and more IoT-related AI research is done into subjects such as sensor parameter key performance indicator (KPI) anomaly detection, sensor predictive maintenance, sensor malfunction estimation, and sensor status._

<br>




##  References 


#### Technical Background and Overview 


- [Data Source](https://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/index.php) -- Master file (_AoT_Chicago.complete.latest.tar_) that expands to 340 GB csv file
- [Unzipping Data Procedure](https://github.com/waggle-sensor/waggle/blob/master/data/aot-readme.md)  
- [Data Ontology](ENTER/docs/sensor_ontology.csv) -- Sensor breakout and parameter ranges 
- [High Level Overview](https://datasmart.ash.harvard.edu/news/article/a-guide-to-chicagos-array-of-things-initiative-1190)
- [Project Homepage](https://tombresee.github.io/SensorAnalysis/)
- [Heroku Results Summary Page](https://michigan-milestone.herokuapp.com/)



#### Nodes 
- [Latest News AoT](http://arrayofthings.github.io/)
- [Latest Online Map](https://data.cityofchicago.org/Environment-Sustainable-Development/Array-of-Things-Locations-Map/2dng-xkng)
- [Latest Nodes Online](https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/nodes.csv)
- [Current Sensor List](http://arrayofthings.github.io/node.html)
- [Waggle Source Code Repo](https://github.com/waggle-sensor/waggle)
- [Common Waggle Sensors](https://github.com/waggle-sensor/sensors)



#### Metadata
- [Waggle Source Code Repo](https://github.com/waggle-sensor/waggle)
- [In-depth Sensor Information](https://github.com/waggle-sensor/sensors)
- [Latest Sensors](https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/sensors.csv)



#### API 
This (https://arrayofthings.docs.apiary.io/#introduction/data,-entities-and-relationships/observations-and-metrics) is no longer in service, it has been replaced with the below...

- [Article](https://medium.com/array-of-things/array-of-things-releases-apis-for-chicago-data-enabling-applications-9bfdbe477df3)
- [API Page](https://arrayofthings.docs.apiary.io/#reference)
- [Access and Use Data](https://sagecontinuum.github.io/sage-docs/docs/tutorials/accessing-data)
- [Architecture](https://sagecontinuum.github.io/sage-docs/docs/about/arch-overview)
- [Beehive Server](https://github.com/waggle-sensor/beehive-server)
- [Real Time Querying Data via API](https://github.com/waggle-sensor/waggle-beehive-v2/blob/main/docs/querying-measurements.md#query-api)
- [Filtering Mechanisms Explained](https://github.com/waggle-sensor/waggle-beehive-v2/blob/main/docs/querying-measurements.md#query-api)



#### Jupyter Notebooks Code

- [Main Jupyter Code NbViewer](https://nbviewer.jupyter.org/github/tombresee/SensorAnalysis/tree/main/ENTER/code/)
- [001 - Examining Metadata Files](https://nbviewer.jupyter.org/github/tombresee/SensorAnalysis/blob/main/ENTER/code/001_examining_sensor_metadata_csv_files.ipynb)
- [001 - Reading Metadata Files](http://jekyllrb.com/)
- [002 - Reading Data](http://jekyllrb.com/)
- [003 - Initial EDA](http://jekyllrb.com/)
- [004 - Node Location Visualization](http://jekyllrb.com/)
- [005 - Exploration](http://jekyllrb.com/)
- [006 - Isolation Forest](http://jekyllrb.com/)
- [007 - Clustering](http://jekyllrb.com/)
- [008 - Summary](http://jekyllrb.com/)



<br>



##  Nodes Network
- The nodes allow the city to track vehicle and pedestrian collisions to understand which intersections or traffic flows lead to pedestrian deaths and make urban planning changes accordingly.
- Chicago has one of the worst incidences of asthma mortality in the country; the nodes can help monitor air pollutant levels across the city and take appropriate measures where necessary.
- Time-stamped pickup and drop-off data on 230mm total trips from both taxies and rideshare apps provide a wealth of information on how residents move through the city, which the city can use to improve efficiency of city operations.
- The nodes can be used for different purposes depending on the area: the Chicago West and South sides commonly have flooding issues during rainstorms, and the nodes can be used to detect standing water, thus helping city employees identify bottlenecks in the city’s sewer system.
- _These sensors are **ideal** for health, environmental, industrial and residential monitoring, because of their high performance, low cost and small size._


<br>

##  Malfunction 
- The 3SP-CO-1000 sensor is not intended for continuous operation at <10% RH. Extended periods (>60-90 days) of operation in <10% humidity may permanently damage the sensor. One conceivable examination point may be to see if we can predict or determine when the sensor has malfunctioned. 
- Determining when the temperature sensor for instance has stopped working effectively, or is giving unusual results (which one could classify as an anomaly or stream of anomalies). 

<br>


##  What Data is Collected ? 
- The nodes will initially measure temperature, barometric pressure, light, vibration, carbon monoxide, nitrogen dioxide, sulfur dioxide, ozone, ambient sound pressure, and pedestrian and vehicle traffic. Continued research and development is using machine learning to create sensors to monitor other urban factors of interest such as solar light intensity (visible, UV, and IR) and cloud cover (important to building energy management), and flooding and standing water
- The Array of Things project is interested in monitoring urban environment and activity, not individuals. In fact, the technology and policy have been designed to specifically minimize any potential collection of data about individuals, so privacy protection is built into the design of the sensors and into the operating policies

<br>

##  Waggle
-  The Waggle Platform is an open source software and hardware platform
for intelligent sensors with advanced edge computing and support for
machine learning.  The Waggle Platform is used by several wireless
sensor projects, including the Array of Things project
(https://arrayofthings.github.io).  For more information on the Waggle
Platform, see http://www.wa8.gl for details.


<br>

##  Left 2 Do 
- Waggle repo integrate code
- Export the html version of the read pandas df metadata locs nodes etc 
- file:///D:/GITHUB_Repos/SensorAnalysis/ENTER/code/output_list_sensors_data.html
- html links reprentable via github 3rd party:  sensor.html how host ???
- Magnetic Field	Detect heavy vehicle flow


[header-image-post]: https://mmistakes.github.io/minimal-mistakes/layout-header-image-text-readability/
[gallery-post]: https://mmistakes.github.io/minimal-mistakes/post%20formats/post-gallery/
[html-tags-post]: https://mmistakes.github.io/minimal-mistakes/markup/markup-html-tags-and-formatting/
[syntax-post]: https://mmistakes.github.io/minimal-mistakes/markup-syntax-highlighting/
[sample-collection]: https://mmistakes.github.io/minimal-mistakes/recipes/chocolate-chip-cookies/
[categories-archive]: https://mmistakes.github.io/minimal-mistakes/categories/
[tags-archive]: https://mmistakes.github.io/minimal-mistakes/tags/
[year-archive]: https://mmistakes.github.io/minimal-mistakes/year-archive/



<br><br>
