## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Design](#Design)

## General info

The purpose of the visualisation project, is to select a dataset and carry out a simulation environment where the user could select stadiums “venues” to organise major events e.g. football tournaments.

1 Dataset - List of FIFA Football Stadiums (fifa_stadiums)
Retrieved from: (.csv): https://data.world/johayes13/football-soccer-stadiums

<img src="https://user-images.githubusercontent.com/47834415/97064114-b70b0900-159b-11eb-8dd1-6925da333292.png" alt="indexmob_html" width="700" heigh="700"/>
    *the exact names from .csv have been applied (no renaming required)

In total, the following desktop version has been created:
 1.           An interactive visualisation.

## Technologies
Project is created with:
</br>
* <img src="https://www.r-project.org/logo/Rlogo.svg" alt="R" width="35" height="35"/> R language

install shiny
Valid HTML and CSS is used wherever possible, and the use of non-validating code is kept to a minimum.

## Setup

R dev environment

Navigate to HTML file location static_website/structure, highlight the document and click Open.

OR

Run the web pages in the development mode, inside folder static_website/structure i.e.:

command line:

`python -m SimpleHTTPServer`

check if the app is running on `http://0.0.0.0:8000/`

## Design



<div style="text-align:justify">The data visualisation “Guide to all major Football Stadiums” has been built using Stacked Histogram. A histogram is appropriate for summarizing the distribution of a numeric variable. The reason of choosing this type of histogram was to display the bars group ranges of values on the “x”-axis. To achieve, the “y”- axis integer values, displays the “Number of Stadiums” <strong> figure 1 (point 1)</strong> per capacity available in the selected country (or Confederation). It gives the ability to find the range by combining with the “x”- axis integer values, indicating the stadium “Capacity” <strong>(point 2)</strong>.</div>

<div style="text-align:center"><img src="https://user-images.githubusercontent.com/47834415/97089125-a60ad800-162d-11eb-92f1-65c6b3f01298.png" alt="fig1" width="700" heigh="700"/></div>

<p>In order to get the selected values displayed, the user has plenty of implemented data filtering options. By using sidebarPanel(); <strong> figure 1 (point 3)</strong>. Select the stadium(s) by selecting their capacity. To filter stadiums by “Confederation” <strong>(point 4)</strong>. Select, the text box, the dropdown box becomes displayed <strong>(figure 2)</strong>. The user can add all 6 “Confederations” and filter their values. Additionally, the user has ability to filter by country, by selecting the check box <strong>(point 5)</strong>, the dropdown box becomes displayed <strong>(figure 3)</strong>.</p>

<img src="https://user-images.githubusercontent.com/47834415/97089220-49f48380-162e-11eb-8b1b-0468ee6994fe.png" alt="fig2_3" width="340" heigh="300"/>

<p>By combining “Confederation” & “Country” search options. Overall, gives the user more flexibility to compare. To make it realistic:<strong> Note!!! If the user selects the country(ies) and the right, Confederation has not selected (figure 4 & 5). The program will display: 0 available stadiums</strong></p>

<img src="https://user-images.githubusercontent.com/47834415/97089524-3eee2300-162f-11eb-89c8-ce796f888419.png" alt="fig4_5" width="350" heigh="300"/>

<p>The added Download button - allows the user to download filtered values <strong> figure 1 (point 6)</strong> in .csv format. By selecting the “Confederation”, the “Type” becomes displayed <strong> figure 6 (point 1)</strong>. Visually assists the user, especially, when more than one “Confederation” is selected and the results require filtering. The stacked histogram has been used for the reason, to display how a larger category is divided into smaller subcategories and what the relationship of each part has on the total amount <strong> figure 6(point 2)</strong>. e.g. delete the "UEFA" values and the numbers representing the "CAF"stadiums will drop to 20 stadiums. <strong>Note!!! the program requires reset. If, the user selects the checkbox to filter stadiums by “country” and later on wants to return and search stadiums by the “Confederation”.</strong></p>

<img src="https://user-images.githubusercontent.com/47834415/97089740-4dd4d580-162f-11eb-8908-19ba2c93850d.png" alt="fig_6" width="350" heigh="300"/>

<p>Referring to the <strong>(figure 7)</strong>, the data table has been implement <strong>(point 1)</strong> to filter findings, by categories. Plus, ability expand the table based on the number of entries <strong>(point 2)</strong> and process search <strong>(point 3).</strong></p>
 
<img src="https://user-images.githubusercontent.com/47834415/97090920-c9368700-162f-11eb-9dbd-1d3e9d3df0b6.png" alt="fig_7" width="67" heigh="300"/>
