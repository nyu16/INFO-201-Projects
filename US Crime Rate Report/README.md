# INFO201-Final-Project
This is the final project repository for BC Boundless. The following link is for our Shiny App: https://alannahu.shinyapps.io/INFO201-Final-Project/

## Visualizing crime rates in New York

In this project, we analyze government data from the Division of Criminal Justice Services in the state of New York about violent, property, and firearm rates by county. Our target audience are any concerned New York citizen and the tourism industry to explore crime rates. Our project provides a way to visual New York crime since 1990 and hopefully be a helpful guide to those travelers or citizens. We created a visual interactive map of New York to show the difference of violent, property, and firearm crimes over a nearly three decades. From this data, we hope viewers will use this data as a tool for policy change, travel planning, and reassessing the safety in New York. In addition, we have provided the data to explore.

### Target Audiences  
__Direct stakeholders__ - New York residents and tourism industry  
They are entities that have a visible role in the operation and support of the service. They use the service and are impacted by it. Additionally, these stakeholders are affected by the crimes in this state.

__Indirect stakeholders__ - data.gov, Division of Criminal Justice Services, Politicians, and New York police  
Although they may not interact with the app, they play an important role as supporters who provide the detail information. The Division of Criminal Justice Services, the Federal Bureau of Investigation, and the New York police all are components in gathering the data displayed. Politicians may be affected by this visualization by citizens pushing policy and reform in regard to crimes, police enforcement, gun control, and county safety.

## Dataset and Sources  
The datasets we worked with was "Index, Violent, Property, and Firearm Rates By County: Beginning 1990 to 2016 in New York State." It can be found in the following link provided by data.gov:
https://catalog.data.gov/dataset/index-violent-property-and-firearm-rates-by-county-beginning-1990

* __Violent Crimes__: murder/non-negligent manslaughter, forcible rape, robbery, and aggravated assault  
* __Property Crimes__: burglary, larceny, and motor vehicle theft  
* __Firearm__: violent crimes involving firearms  
* __Population Data__: provided by FBI based on US census
___Disclaimer___: the count only represents crimes reported to the police, not the total crimes that occurred. There may be also be police reporting errors.  

The statistical analysis tells the safety of New York in terms of crime rates from 1990 until 2016 accessible to all internet users.  

Through the use of a _Shiny Web App_, we visualize the data taken about crime rates in the state of New York read in from a static data.gov csv file. The data wrangling procedures we use are filtering, selecting, and joining the csv data with the state county csv data, in order to apply those data onto the ggplot and ggplotly visual representation.
The code is available on https://github.com/idomori/INFO201-Final-Project.  

Web Designed by: Franklin, Alanna, Margaret, Nick 3/2018
