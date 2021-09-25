# Using graph_objects
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot
import plotly
import matplotlib.pyplot as plt
from matplotlib import pyplot
import plotly.graph_objs as go
init_notebook_mode(connected=True)
import plotly.graph_objs as go
fig = go.Figure(data=[go.Scatter(x=df.index,  y=df.value_hrf)])
iplot(fig); 
