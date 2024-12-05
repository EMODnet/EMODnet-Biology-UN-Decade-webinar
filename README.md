# Demonstration of accessing EMODnet Biology Data and Data Products in R for the UN Ocean Decade

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/EMODnet/EMODnet-Biology-UN-Decade-webinar/HEAD)

This repository contains [Jupyter notebooks](./notebooks/) used for the **EMODnet Biology** session of the webinar on data for the [UN Ocean Decade – A European focus](https://eudata4oceandecade.eu/) on **15 January 2025**. These notebooks aim to show how data from EMODnet Biology an contribute to the [UN Ocean Decade goals](https://oceandecade.org/challenges/) with focus on the **Challenge 3**, related to food security.



![Icons representing the UN Ocean Decade Challenges](https://oceandecadenortheastpacific.org/img/asset/YXNzZXRzLzEwLWNoYWxsZW5nZXMucG5n/10-challenges.png?fm=webp&q=90&fit=crop-50-50&w=979&h=392&s=496cd63544addcf531c95d5fff28d06c)



The notebooks provide practical demonstrations on **how to access and use relevant EMODnet Biology Data and Data Products**, showcasing applications in marine biology, including **commercial fishes distributions** and other key biodiversity indicators. 



## Quick start 🚀

This repository is compatible with [**binder**](https://mybinder.org). You can run a [JupyterLab](https://jupyter.org/) instance in your browser with already all the software requirements pre-installed for you

#### > [**Click here to Run the Notebooks in your browser**](https://mybinder.org/v2/gh/EMODnet/EMODnet-Biology-UN-Decade-webinar/HEAD) 

The notebooks are in the 📁 folder:  `./notebooks/`. 



## Set-up 🖥️  

If you use [**docker**](https://www.docker.com/), you can build and run the container:

```bash
docker build -t emodnetbio-unwebinar .
docker run --rm -ti -p 8888:8888 emodnetbio-unwebinar
```

Alternatively, if you want to **run these notebooks in your own machine** you will need:

* [Jupyter notebooks](https://jupyter.org/) or [Visual Studio Code](https://code.visualstudio.com/)
* [R v4.0](https://www.r-project.org/) or higher
* [IRkernel](https://irkernel.github.io/) to run R using Jupyter notebooks.
* Download this repository and install the necessary R packages indicated at the file `./install.R`



## License

MIT

