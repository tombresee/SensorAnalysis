##  Array of Things (AoT)

Towards a deeper understanding of IoT Unsupervised Learning techniques and sensor KPI parameter anomaly detection for AI Edge Computing tactics


<br>

<dl>
<dt>Project Link</dt>
<dd><a href='https://tombresee.github.io/SensorAnalysis//'>https://tombresee.github.io/SensorAnalysis/</a></dd>
<dt>Authors</dt>
<dd>Tom Bresee, Michael Phillips</dd>
<dt>Date</dt>
<dd>September 2021</dd>
</dl>

<br>

## Table of Contents

<!-- TOC depthFrom:1 depthTo:3 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Table of Contents](#table-of-contents)
- [Motivation](#motivation)
- [What Data is Collected ?](#what-data-is-collected-?)
- [Data Deep Dive](#data-deep-dive)
- [References](#references)
	- [Technical Background and Overview](#technical-background-and-overview)
	- [Nodes](#nodes)
	- [Metadata](#metdata)
	- [API](#api)
- [Overall Project Code Methodology](#overall-project-code-methodology)
- [Unsupervised Learning Methods](#unsupervised-learning-methods)
- [All Project Code](#all-project-code)
	- [Jupyter Notebooks Code](#jupyter-notebooks-code)
- [Waggle](#waggle)
- [Nodes Network](#nodes-network)
- [Malfunction Information](#malfunction-information)
- [Ethical Implications](#ethical-implications)
- [Challenges](#challenges)
- [Appendix](#appendix)
  	- [A. Follow Up Research](#a-follow-up-research)
  	- [B. Sensor Malfunction Example](#b-sensor-malfunction-example)
	
<!-- /TOC -->

<br>

##  Motivation

As a continuing investigation into the realm of real-world sensor analytics, we focus on a massive Internet of Things (IoT) cluster known as the [Array of Things](http://arrayofthings.github.io/), hosted in the city of Chicago and part of a continuing effort for `smart city` enablement.  It is expected that smart city initiatives will progress, as Chicago takes the lead in deploying it's AoT cluster.  In recent years, the smart city concept has gone from theoretical to actual live production networks.  We leverage unsupervised machine learning tactics to dive deeper into a large set of this extensive AoT sensor data. The Array of Things (AoT) Chicago sensor network is an **extensive** cluster with software-defined units performing multiple sensing duties, as a true predecesor to a 'smart city'.  We have Folium (python geo-mapper) to plot all 126 current sensor node locations [here](https://rawcdn.githack.com/tombresee/SensorAnalysis/0b1a54fcba14e4042fbc7534281b845a8134f2ec/ENTER/code/node_locations_visualized/index.html), where clicking or hovering on the node shows its address and unique node_id.  This project was initially funded by the National Science Foundation to design and build a new kind of national-scale reusable cyberinfrastructure to enable AI at the edge. The project  leverages open source hardware/software developed by [Argonne National Laboratory](https://www.anl.gov/).  The supervised machine learning techniques were initially associated with our first dataset (the human activity recognization HAR dataset). This section details mainly the second part, which was to identify unsupervised machine learning techniques for an additional dataset. 

**The IoT sector is expected to be a billion dollar market as advances in computing, lower cost sensors, and **5G** cellular technology progress.** We anticipate more and more IoT-related AI research is done into subjects such as sensor parameter key performance indicator (KPI) anomaly detection, sensor predictive maintenance, sensor malfunction estimation, and sensor status.  Our investigation revolved around clustering sensor data KPI values into 'normal' vs 'anomalous', as well as comparing individual cluster node data with other nodes. Specific unsupervised learning techniques involved are isolation forest, DBSCAN, <insert>, and <insert> clustering.   Part of the motivation for this project is the fact that this dataset represents a huge real-world non-synthetic view of sensor IoT program.  Many datasets from UCI or Kaggle are synthetic or run under laboratory-like conditions, however this dataset represents insight into how IoT sensors really perform, the good, the bad, the practical...
	
<br>

##  Philosophy
Time series dataset machine learning examination is still really being developed, new methods are being created on a yearly basis.  This dataset allows one to create whole new approaches on how to deal with the challenging cases of longitudinal data and time-series for sensors.  Time series outputs depends on many factors (window size, algorithm, pre-filtering assumptions, etc), part of the exciting part is developing whole new ways of approaching this problem, given that subject matter expertise of the system is a key component.  It is estimated that with the continued rollout of **5G cellular technologies**, IoT processing and examination will skyrocket, give IoT can ride the 5G backhaul that will soon become a ubiquitous element of society...
	
	
<br>
 
 

##  What Data is Collected in the AoT Cluster ?  
- The sensor nodes measure items such as temperature, barometric pressure, light, vibration, magnetic fluctation, carbon monoxide, nitrogen dioxide, sulfur dioxide, ozone, ambient sound pressure, and pedestrian and vehicle traffic.  Continued research and development is using machine learning to create sensors to monitor other urban factors of interest such as solar light intensity (visible, UV, and IR) and cloud cover (important to building energy management), and flooding and standing water. 
- The Array of Things project is inherently interested in monitoring urban environment and activity, and not necessarily specific individuals.  The base technology and policy have been designed to specifically minimize any potential collection of data about individuals, so privacy protection is built into the design of the sensors and into the operating policies.  The goal is extensive smart city granular data. 
- Example of a calculated window for a single sensor subsystem's temperature data shown below (closeup image [here](https://raw.githubusercontent.com/tombresee/SensorAnalysis/main/ENTER/images/single_subsensor_temp_data_two_month.png))
	

![sensor single](images/single_subsensor_temp_data_two_month.png)
<p align='center'><i>Fig: Single Sensor Two Month Window</i></p>
	
	
<br>
 

## Data Source Deep Dive
 
- The main dataset is consolidated into one massive (tar) compressed file and hosted [here](https://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/index.php)
  - **filename** - AoT_Chicago.complete.latest.tar 
  - **uncompressed file size** - **320 GB** 
  - **compressed file size** - **33.73 GB**
  - **uncompressed file type** - .csv
  - **data date range** - March 2018 through April 2021 is the master time range represented in the data 
  - **granularity** - Every sensor parameter records parameter data every **25 seconds**
  - **raw rows of data** - 4 billion + 
  - **time period of data**
    - 2018-03-06 22:14:56 -> 2021-03-22 05:18:42
    - representing 1,112 days, i.e. 3 years, 16 days
  - **granularity of data** - 25s increments for multiple sensors, multiple sensor substems, and multiple parameters
  - **total number of unique nodes** - 126
  - many nodes include chemical sensors, Alphasense OPN-N2 air quality sensors, and/or Plantower PMS7003 air quality sensors (data breaks this out by C, A, and P designator)
  - **important variables** 
   - sensor node id 
   - subsystem type of sensor  
   - sensor parameter type (temperature, barometric pressure, etc)
   - sensor parameter data value (raw)
   - sensor parameter data value (human readable) - the most important value for analysis
- Note:  Sensors were initially deployed in waves, not all of them were turned 'up' at the exact same time...
- In addition, there is a more 'real-time' data API service available to pull the last week of data
  - This is found via the the below API link
    - https://data.sagecontinuum.org/api
   - We have created python scripts to pull this data on a per node, per sensor, per parameter level
  - Detailed usage suggestions contained [here](https://github.com/waggle-sensor/waggle-beehive-v2/blob/main/docs/querying-measurements.md)

<br>

---
	
The sensor data digest (archive) contained the following files:

* `data.csv.gz` - Sensor data ordered by ascending timestamp
* `nodes.csv` - Nodes metadata
* `sensors.csv` - Sensor metadata
* `provenance.csv` - Provenance metadata

The `data.csv.gz` file is a compressed CSV with the following columns:

* `timestamp` - UTC timestamp of when the measurement was done
* `node_id` - ID of node which did the measurement
* `subsystem` - Subsystem of node containing sensor
* `sensor` - Sensor that was measured
* `parameter` - Sensor parameter that was measured
* `value_raw` - Raw measurement value from sensor
* `value_hrf` - Converted, "human readable" value from sensor

These fields will always be provided as a header, for example:
```
timestamp,node_id,subsystem,sensor,parameter,value_raw,value_hrf
2017/09/09 22:12:44,001e0610ba8f,lightsense,hih4030,humidity,NA,32.18
2017/09/09 22:12:44,001e0610ba8f,lightsense,hih4030,temperature,NA,48.55
2017/09/09 22:12:44,001e0610ba8f,lightsense,ml8511,intensity,9643,NA
2017/09/09 22:12:44,001e0610ba8f,lightsense,tmp421,temperature,NA,43.81
2017/09/09 22:12:44,001e0610ba8f,metsense,hih4030,humidity,450,NA
2017/09/09 22:12:44,001e0610ba8f,metsense,htu21d,humidity,NA,41.15
2017/09/09 22:12:44,001e0610ba8f,metsense,htu21d,temperature,NA,24.1
2017/09/09 22:12:44,001e0610ba8f,metsense,metsense,id,00001814B7E8,00001814B7E8
2017/09/09 22:12:44,001e0610ba8f,metsense,pr103j2,temperature,839,NA
```

_Sensor data is ordered by ascending timestamp_

Additional information such each node's coordinates or each sensor units can be found
in the metadata. 
	
A sensor values may be marked `NA`, indicating that either the raw or HRF value is
unavailable.

The node metadata provides additional information about each of the AoT project's nodes. This
file is a CSV with the following fields:

* `node_id` - ID of node.
* `project_id` - ID of project which manages node.
* `vsn` - Public name for node. The VSN is visible on the physical enclosure.
* `address` - Street address of node installation.
* `lat` - Latitude of node installation.
* `lon` - Longitude of node installation.
* `description` - More detailed description of node's build and configuration.
* `start_timestamp` - Starting timestamp of node installation.
* `end_timestamp` - Ending timestamp of node installation.

These fields will always be provided as a header, for example:
```
node_id,project_id,vsn,address,lat,lon,description,start_timestamp,end_timestamp
001e0610ba46,AoT_Chicago,004,State St & Jackson Blvd Chicago IL,41.878377,-87.627678,AoT Chicago (S) [C],2017/10/09 00:00:00,
001e0610ba3b,AoT_Chicago,006,18th St & Lake Shore Dr Chicago IL,41.858136,-87.616055,AoT Chicago (S),2017/08/08 00:00:00,
001e0610ba8f,AoT_Chicago,00D,Cornell & 47th St Chicago IL,41.810342,-87.590228,AoT Chicago (S),2017/08/08 00:00:00,
001e0610ba16,AoT_Chicago,010,Ohio St & Grand Ave Chicago IL,41.891964,-87.611603,AoT Chicago (S) [C],2017/12/01 00:00:00,2018/06/04 00:00:00
```

Additional details about a node are contained in the description field. The letters
inside the brackets `[ ]` indicate:

* `C` - Node is equipped with chemical sensors.
* `A` - Node is equipped with Alphasense OPN-N2 air quality sensor.
* `P` - Node is equipped with Plantower PMS7003 air quality sensor.

The **sensor metadata** provides additional information about each of the sensors published
by the project. This file is a CSV with the following fields:

* `ontology` - Ontology of measurement.
* `subsystem` - Subsystem containing sensor.
* `sensor` - Sensor name.
* `parameter` - Sensor parameter.
* `hrf_unit` - Physical units of HRF value.
* `hrf_minval` - Minimum HRF value according to datasheet. Used as lower bound in range filter.
* `hrf_maxval` - Maximum HRF value according to datasheet. Used as upper bound in range filter.
* `datasheet` - Reference to sensor's datasheet.

These fields will always be provided as a header, for example:
```
ontology,subsystem,sensor,parameter,hrf_unit,hrf_minval,hrf_maxval,datasheet
/sensing/meteorology/pressure,metsense,bmp180,pressure,hPa,300,1100,"https://github.com/waggle-sensor/sensors/blob/master/sensors/airsense/bmp180.pdf"
/sensing/meteorology/temperature,metsense,bmp180,temperature,C,-40,125,"https://github.com/waggle-sensor/sensors/blob/master/sensors/airsense/bmp180.pdf"
/sensing/meteorology/humidity,metsense,hih4030,humidity,RH,0,100,"https://github.com/waggle-sensor/sensors/blob/master/sensors/airsense/htu4030.pdf"
/sensing/meteorology/humidity,metsense,htu21d,humidity,RH,0,100,"https://github.com/waggle-sensor/sensors/blob/master/sensors/airsense/htu21d.pdf"
/sensing/meteorology/temperature,metsense,htu21d,temperature,C,-40,125,"https://github.com/waggle-sensor/sensors/blob/master/sensors/airsense/htu21d.pdf"
```

More in-depth information about each sensor can be found at: https://github.com/waggle-sensor/sensors

The **provenance metadata** provides additional information about the origin of the
project digest. This file is a CSV with the following fields:

* `data_format_version` - Data format version.
* `project_id` - Project ID.
* `data_start_date` - Minimum possible publishing UTC timestamp.
* `data_end_date` - Maximum possible publishing UTC timestamp. If no explicit date exists, the creation date is used.
* `creation_date` - UTC timestamp this digest was created.
* `url` - URL where this digest was provided.

These fields will always be provide as a header, for example:
```
data_format_version,project_id,data_start_date,data_end_date,creation_date,url
1,AoT_Chicago.complete,2017/03/31 00:00:00,2018/04/10 15:34:36,2018/04/10 15:34:36,http://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/AoT_Chicago.complete.latest.tar.gz
```

---

<br>

	
##  References 

### Technical Background and Overview 

- [Data Source](https://www.mcs.anl.gov/research/projects/waggle/downloads/datasets/index.php) -- Master file (_AoT_Chicago.complete.latest.tar_) that expands to 340 GB csv file
- [Unzipping Data Procedure](https://github.com/waggle-sensor/waggle/blob/master/data/aot-readme.md)  
- [Data Ontology](ENTER/docs/sensor_ontology.csv) -- Sensor breakout and parameter ranges 
- [High Level Overview](https://datasmart.ash.harvard.edu/news/article/a-guide-to-chicagos-array-of-things-initiative-1190)
- [Project Homepage](https://tombresee.github.io/SensorAnalysis/)
- [Heroku Results Summary Page](https://michigan-milestone.herokuapp.com/)

### Nodes 
- [Latest News AoT](http://arrayofthings.github.io/)
- [Latest Online Map](https://data.cityofchicago.org/Environment-Sustainable-Development/Array-of-Things-Locations-Map/2dng-xkng)
- [Latest Nodes Online](https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/nodes.csv)
- [Current Sensor List](http://arrayofthings.github.io/node.html)
- [Waggle Source Code Repo](https://github.com/waggle-sensor/waggle)
- [Common Waggle Sensors](https://github.com/waggle-sensor/sensors)
- [The Sage Network](https://sagecontinuum.org/)
- [Rollout Article](https://medium.com/array-of-things/five-years-100-nodes-and-more-to-come-d3802653db9f)
 
	
### Metadata
- [Waggle Source Code Repo](https://github.com/waggle-sensor/waggle)
- [In-depth Sensor Information](https://github.com/waggle-sensor/sensors)
- [Latest Sensors](https://github.com/waggle-sensor/beehive-server/blob/master/publishing-tools/projects/AoT_Chicago.complete/sensors.csv)


### API 
- [Original AoT API Link](https://arrayofthings.docs.apiary.io/#introduction/data,-entities-and-relationships/observations-and-metrics) - replaced by below 
- [API Access Page](https://arrayofthings.docs.apiary.io/#reference)
- [Access and Use Data](https://sagecontinuum.github.io/sage-docs/docs/tutorials/accessing-data)
- [Article](https://medium.com/array-of-things/array-of-things-releases-apis-for-chicago-data-enabling-applications-9bfdbe477df3)
- [Architecture](https://sagecontinuum.github.io/sage-docs/docs/about/arch-overview)
- [Beehive Server](https://github.com/waggle-sensor/beehive-server)
- [Real Time Querying Data via API](https://github.com/waggle-sensor/waggle-beehive-v2/blob/main/docs/querying-measurements.md#query-api)
- [Filtering Mechanisms Explained](https://github.com/waggle-sensor/waggle-beehive-v2/blob/main/docs/querying-measurements.md#query-api)
- https://medium.com/array-of-things/array-of-things-releases-apis-for-chicago-data-enabling-applications-9bfdbe477df3
- Unlike the bulk downloads, which provide data in daily, weekly, or monthly installments back to early 2017, the API data is focused only on recent data, going back one week. However, the data are updated more frequently, within five minutes of collection.
	
		
<br>

## Overall Project Code Methodology

Briefly describe the workflow of your source code, the learning methods you used, and the feature representations you chose.
How did you tune parameters?
What challenges did you encounter and how did you solve them?


	
### Reading Dataset
The data file was in compressed tar format.  This main file was downloaded, and the archive was untared, which produced a directory.  We unpacked the data archive, and the archive decompressed to a CSV file about 10 times its original size (ending up being over 300GB in memory size).  We leveraged [Dask](https://dask.org/) for the initial assimilation of the data, due to massive size.  Rows that contined non-float id values (used as section identifiers) were filtered out.  Initially, we created one single dataframe that encompassed **one** of the 126 nodes information, and exported that as csv, for ease in initial investigation. 
	
### Unsupervised Learning Methods
We will describe the workflow of the source code, the leaning methods used, and the feature representation used. 
*Focused on investigating anomalies via Isolation Forest, DBSCAN, HDBSCAN, and abc.*
	
**Isolation Forest**
abc 
	
**DBSCAN**
> It should be noted that with time-series it is not really feasible to dynamically determine the number of 'clusters' prior, thus using an algorithm like DBSCAN for time series data, Density Based Spatial Clustering of Applications with Noise (DBSCAN) becomes a nice approach, as it does not require any predefined number of clusters and has only two parameters (minimum number of points in a cluster and epsilon, distance between clusters), it is relatively fast as well. Optimal eps was abc. 

Image below of two month window (closeup image can be found [here](https://raw.githubusercontent.com/tombresee/SensorAnalysis/main/ENTER/images/single_subsensor_temp_data_two_month_dbscan_clusters.png))

![sensor](images/single_subsensor_temp_data_two_month_dbscan_clusters.png)
<p align='center'><i>Fig: DBSCAN Two-Month Window Temperature Anomalies</i></p>

**Tuning:**
- abc
	
**Challenges encountered and how we solved them:** 
- Interesting:  The Jan/Feb 2019 cold wave (polar vortex) was so bad that smashed into the USA, it got its own wikipedia page [link](https://en.wikipedia.org/wiki/January%E2%80%93February_2019_North_American_cold_wave)
- Tuning DBDSCAN is not an easy thing, lot of trial and error and tuning
- Window size matters alot, if you grab too wide, you miss nuance.  If you choose to small, you pick up abc.  But anomalies are contextual, an anomaly in Jan (window two months), may not show up if window was four months... So it is all 'relative'
	
<br>
  
##  All Project Code
 
### Jupyter Notebooks Code

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
 

## Waggle
-  The Waggle Platform is an open source software and hardware platform
for intelligent sensors with advanced edge computing and support for
machine learning.  The Waggle Platform is used by several wireless
sensor projects, including the Array of Things project
(https://arrayofthings.github.io).  For more information on the Waggle
Platform, see http://www.wa8.gl for details.
 
  
<br>
  
 
##  Nodes Network
- The nodes allow the city to track vehicle and pedestrian collisions to understand which intersections or traffic flows lead to pedestrian deaths and make urban planning changes accordingly.
- Chicago has one of the worst incidences of asthma mortality in the country; the nodes can help monitor air pollutant levels across the city and take appropriate measures where necessary.
- Time-stamped pickup and drop-off data on 230mm total trips from both taxies and rideshare apps provide a wealth of information on how residents move through the city, which the city can use to improve efficiency of city operations.
- The nodes can be used for different purposes depending on the area: the Chicago West and South sides commonly have flooding issues during rainstorms, and the nodes can be used to detect standing water, thus helping city employees identify bottlenecks in the city’s sewer system.
- _These sensors are **ideal** for health, environmental, industrial and residential monitoring, because of their high performance, low cost and small size._


<br>

##  Malfunction Information
- The 3SP-CO-1000 sensor is not intended for continuous operation at <10% RH. Extended periods (>60-90 days) of operation in <10% humidity may permanently damage the sensor. One conceivable examination point may be to see if we can predict or determine when the sensor has malfunctioned. 
- Determining when the temperature sensor for instance has stopped working effectively, or is giving unusual results (which one could classify as an anomaly or stream of anomalies). 

																  
<br> 
	
##  Ethical Implications
- Initial privacy policy for the original AoT network are documented [here](https://arrayofthings.github.io/privacypolicy.html)
- [Original Civic Engagement Report](https://arrayofthings.github.io/engagement-report.html)
- According to the original AoT sensor network design, the sensors do **not** have the capability to measure or identify individuals; microphones and cameras in public spaces do not collect sensitive personally identifiable information (PII). 
- Microphone and camera images will be processed in near-real-time within the installed equipment, not transmitted or stored, with the exception of less than 1% of images at random times, saved for the purposes of image processing software calibration. Although these images will not contain PII, they will be controlled and protected with the same measures typically afforded PII. 
- During the 2016-2017 pilot period, the cameras were used for the purposes of detecting and publishing (a) count/flow of pedestrians, (b) count and flow of various vehicle types, and (c) extent to which road surface is covered with standing water (flooding). 
- What ethical issues could arise in providing a solution here, and how could you address them?
  - add 
      
	
<br>
    
## Challenges
**File Size** -- The massive size of the core csv datafile (over 300GB) was difficult to parse through due to the memory size requirements, including the limitation of pandas. All efforts were made to parallel process the files via multiple PC cores.  In addition, Dask was used to initially filter the file due to its ability to handle massive file sizes.  Indexing was done to speed up process. The dataset itself just to filter through it is time-consuming due to its size.  This resulted in many cycles of time lost. 

**Complexity** -- Time-series anomaly detection (for univariate streams) is not always easy for anomaly detection analysis, and the size of the actual window under examination makes a substantial difference in results sometimes. Paradox: When you have a large data set, what window size do you use ?  AD is heavily dependent on window size and window placement. 
	
**UML** -- Tuning parameters for DBSCAN is sometimes limited, due to the need for subject-matter expertise of the actual dataset itself.  High computational costs for algorithms such as DBSCAN - High computational expense of average O(n log(n)) coming from a need to execute a neighbourhood query for each point; killing my time...also, the quality of the clustering results strongly depends on the measure you choose to compare the time-series (the standard euclidean distance measure may not be ideal for time-series, maybe). 
	
**Real-World Issues** -- Filtering: There were some sensors that flat-lined at some point for a window of time (conventional malfunction), these windows were documented 
	
**Plotting** -- It should be understood that given the granular nature of the streaming data (every 25-30s), a single dimension single variate parameter results in over 1M observations per year.  Thus plotting in larger window sizes required using high level plotting libraries such as Matplotlib/Seaborn, but for shorter timeframes where real-time granularity was necessary, Altair and Plotly were used. Plotly was also used in some cases so that the Dash version of the plots could be plotted online (heroku). 
		
<br>
	
 
##  Appendix

#### A. Follow Up Research
- Deeper examinination into time-series clustering
- Deeper analysis of how to effectively do anomaly detection on time-series where the data is not necessarily cyclic, periodic, or un'wavering'
- Developing a sliding-window based approach, to use the real-time API to determine update anomalies over the course of time (a truly dynamic anomaly detection system)
	
#### B. Sensor Malfunction Example
Periodically, some sensors would have windows of missing values (temperature in this sensor's case).  It is difficult to determine if this was due to potential sensor malfunction (or perhaps software update, etc).  

![sensor](images/pr103j2_single_sensor_temperature_fluct_missing_window_example.png)
<p align='center'><i>Fig: Potential Malfunctioning Window</i></p>
	

[Top](#table-of-contents) 

	
<br><br>
  
[header-image-post]: https://mmistakes.github.io/minimal-mistakes/layout-header-image-text-readability/
[gallery-post]: https://mmistakes.github.io/minimal-mistakes/post%20formats/post-gallery/
[html-tags-post]: https://mmistakes.github.io/minimal-mistakes/markup/markup-html-tags-and-formatting/
[syntax-post]: https://mmistakes.github.io/minimal-mistakes/markup-syntax-highlighting/
[sample-collection]: https://mmistakes.github.io/minimal-mistakes/recipes/chocolate-chip-cookies/
[categories-archive]: https://mmistakes.github.io/minimal-mistakes/categories/
[tags-archive]: https://mmistakes.github.io/minimal-mistakes/tags/
[year-archive]: https://mmistakes.github.io/minimal-mistakes/year-archive/

