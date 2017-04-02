# *The Search for New Earths*

Hi! I'm winter delta (WΔ) and **here** you can find a couple of `.csv` files. Together they comprise a train and test set primed for machine learning. 

### The Mission

Kepler is a NASA satellite-telescope designed to search for exoplanets. It is currently in its K2 phase. From an operational perspective, Kepler conducts campaigns. During a campaign, its camera focuses on one area of space and observes the same region for around 80 days.

Kepler is very sensitive to changes in flux (light intensity). Periodically, data are beamed down to Earth and after a bit of de-noising, they are open-sourced via the **Mikulski Archive**.

### The Data

The `.csv` files are hosted on **Kaggle,** where a description of the datasets can also be found.

### From Mikulski to Kaggle

I myself (WΔ) created these datasets in late-summer 2016 and have now open-sourced them. I cleaned/processed them as follows:

* *Download* the Campaign-3 folder containing `n` star-files.
* For each star-file **do**:
    * *Transpose* PDC_SAP_FLUX column
        * *Merge* row onto `df`

At the time of cleaning, 'it was felt' that Campaign-3 was unlikely to contain any undiscovered exoplanet-stars. Therefore, all stars (i.e. all rows) which were *not* confirmed to host an exoplanet, were labelled with a `0`. This is over 99% of the observations :-( . This project could be renamed as '*A Search for a Needle in a Haystack*'.

In total there are 42 observations labelled with a `1`, 5 in the test set and 37 in the train set.

# This Mission

Of course, it's quite simple... build a classification algorithm! What has been tried so far:

* 1-D CNN in Torch7
* **XGBoost in R**
* **PCA in Python**

None of these angles have provided strong results so far.

Plausible Future Strategies:

* Data Augmentation:
 ...Since the observations are time series trends, perhaps systematically shifting rows and adding noise could generate additional realistic (albeit synthetic) trends.
* Deep Autoencoders:
 ...Clustering, i.e. unsupervised learning, might shed light into new angles to take.

# Issues to note:

On download, the datasets are **unnormalised**. 
