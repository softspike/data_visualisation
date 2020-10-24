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

<p>The data visualisation “Guide to all major Football Stadiums” has been built using Stacked Histogram. A histogram is appropriate for summarizing the distribution of a numeric variable. The reason of choosing this type of histogram was to display the bars group ranges of values on the “x”-axis. To achieve, the “y”- axis integer values, displays the “Number of Stadiums” figure 1 (point 1) per capacity available in the selected country (or Confederation). It gives the ability to find the range by combining with the “x”- axis integer values, indicating the stadium “Capacity” (point 2).</p>

<img src="https://user-images.githubusercontent.com/47834415/97089125-a60ad800-162d-11eb-92f1-65c6b3f01298.png" alt="fig1" width="700" heigh="700"/>

<p>In order to get the selected values displayed, the user has plenty of implemented data filtering options. By using sidebarPanel(); figure 1 (point 3). Select the stadium(s) by selecting their capacity. To filter stadiums by “Confederation” (point 4). Select, the text box, the dropdown box becomes displayed (figure 2). The user can add all 6 “Confederations” and filter their values. Additionally, the user has ability to filter by country, by selecting the check box (point
5), the dropdown box becomes displayed (figure 3).</p>

<img src="https://user-images.githubusercontent.com/47834415/97089220-49f48380-162e-11eb-8b1b-0468ee6994fe.png" alt="fig2_3" width="340" heigh="300"/>

<p>By combining “Confederation” & “Country” search options. Overall, gives the user more flexibility to compare. To make it realistic:<strong> Note!!! If the user selects the country(ies) and the right, Confederation has not selected (figure 4 & 5). The program will display: 0 available stadiums</strong></p>

<img src="https://user-images.githubusercontent.com/47834415/97089524-3eee2300-162f-11eb-89c8-ce796f888419.png" alt="fig4_5" width="350" heigh="300"/>

The added Download button - allows the user to download filtered values figure 1 (point 6) in .csv format. By selecting the “Confederation”, the “Type” becomes displayed figure 6 (point 1). Visually assists the user, especially, when more than one “Confederation” is selected and the results require filtering. The stacked histogram has been used for the reason, to display how a larger category is divided into smaller subcategories and what the relationship of each
part has on the total amount figure 6(point 2). e.g. delete the "UEFA" values and the numbers representing the "CAF"stadiums will drop to 20 stadiums.
<strong>Note!!! the program requires reset. If, the user selects the checkbox to filter stadiums by “country” and later on wants to return
and search stadiums by the “Confederation”.</strong></p>

<img src="https://user-images.githubusercontent.com/47834415/97089740-4dd4d580-162f-11eb-8908-19ba2c93850d.png" alt="fig_6" width="350" heigh="300"/>

### Home Page Mobile set @768 px .css breakpoint
<img src="https://user-images.githubusercontent.com/47834415/96944021-a5f5c580-14d1-11eb-8b2b-97f7f9e115df.png" alt="indexmob_html" width="67" heigh="300"/>

### Study Page (Desktop & Mobile/set @768 px .css breakpoint)
<img src="https://user-images.githubusercontent.com/47834415/96944050-b6a63b80-14d1-11eb-8849-db508a33b8e1.png" alt="research_desktop" width="350" heigh="300"/><img src="https://user-images.githubusercontent.com/47834415/96944065-c32a9400-14d1-11eb-8953-7e3d7586d8b9.png" alt="research_mobile" width="150" heigh="300"/>

### Research Page (Desktop & Mobile/set @768 px .css breakpoint) 
<img src="https://user-images.githubusercontent.com/47834415/96944081-ccb3fc00-14d1-11eb-88f8-835bd0256abc.png" alt="study_desktop" width="350" heigh="300"/><img src="https://user-images.githubusercontent.com/47834415/96944100-d63d6400-14d1-11eb-96b0-0b4458e89802.png" alt="study_mobile" width="150" heigh="300"/>









# Dillinger

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Dillinger is a cloud-enabled, mobile-ready, offline-storage, AngularJS powered HTML5 Markdown editor.

  - Type some Markdown on the left
  - See HTML in the right
  - Magic

# New Features!

  - Import a HTML file and watch it magically convert to Markdown
  - Drag and drop images (requires your Dropbox account be linked)


You can also:
  - Import and save files from GitHub, Dropbox, Google Drive and One Drive
  - Drag and drop markdown and HTML files into Dillinger
  - Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.  As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

### Tech

Dillinger uses a number of open source projects to work properly:

* [AngularJS] - HTML enhanced for web apps!
* [Ace Editor] - awesome web-based text editor
* [markdown-it] - Markdown parser done right. Fast and easy to extend.
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [node.js] - evented I/O for the backend
* [Express] - fast node.js network app framework [@tjholowaychuk]
* [Gulp] - the streaming build system
* [Breakdance](https://breakdance.github.io/breakdance/) - HTML to Markdown converter
* [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

### Installation

Dillinger requires [Node.js](https://nodejs.org/) v4+ to run.

Install the dependencies and devDependencies and start the server.

```sh
$ cd dillinger
$ npm install -d
$ node app
```

For production environments...

```sh
$ npm install --production
$ NODE_ENV=production node app
```

### Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |


### Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
$ node app
```

Second Tab:
```sh
$ gulp watch
```

(optional) Third:
```sh
$ karma test
```
#### Building for source
For production release:
```sh
$ gulp build --prod
```
Generating pre-built zip archives for distribution:
```sh
$ gulp build dist --prod
```
### Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.

```sh
cd dillinger
docker build -t joemccann/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out `${package.json.version}` with the actual version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" <youruser>/dillinger:${package.json.version}
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:8000
```

#### Kubernetes + Google Cloud

See [KUBERNETES.md](https://github.com/joemccann/dillinger/blob/master/KUBERNETES.md)


### Todos

 - Write MORE Tests
 - Add Night Mode

License
----

MIT


**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>

