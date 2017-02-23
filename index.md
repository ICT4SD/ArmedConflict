---
layout:     post
header-img: "img/conflict.jpg"
title:      "Armed Conflict Analytics"
subtitle:   "Research on armed conflicts worldwide."
repository: "ArmedConflict"
date:       2016-09-20 12:00:00
author:     "Soumik Mandal, PhD student Information Science, Rutgers University"
goal:		16
partners:   
  - partner: "Rutgers University - InfoSeeking Lab"
---
Contributors
------------

[![The InfoSeeking Lab at the School of Communication & Information - Rutgers University]({{ site.url }}/img/partners/rutgers.png)](http://www.infoseeking.org/)

Dr. Chirag Shah - Rutgers University  
Associate Professor of Information Science  
Affiliate member of Computer Science  

Kevin Albertson - Rutgers University   
Master's student - Computer Science and Mathematics

Introduction
------------

An armed conflict is defined as a contested incompatibility which concerns government and/or territory where the use of armed force between two parties, of which at least one is the government of a state, results in at least 25 battle-related deaths (Wallensteen, & Sollenberg, 2001). With this proposed study the researcher aims to provide the academic community with the most comprehensive structured event data available on organized violence in the post-1989 world involving, and finally to provide some predictions about conflict dynamics of the locations and the effects of armed violence, in the form of deaths. Since middle-east is the current hot zone, where every day numerous people are losing their lives due to armed conflicts involving governments, sectarian groups, rebels etc., the researcher has decided to contain this proposed study involving only middle-eastern countries.

<div>
    <a href="https://plot.ly/~Dreamshot/495/" target="_blank" title="Percent of Bachelor Degrees (Women) by Year" style="display: block; text-align: center;"><img src="https://plot.ly/~Dreamshot/495.png" alt="Percent of Bachelor Degrees (Women) by Year" style="max-width: 100%;width: 725px;"  width="725" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" />
    </a>
    <script data-plotly="Dreamshot:495"  src="https://plot.ly/embed.js" async></script>
</div>


Literature Review
-----------------

In the World Commission on Environment and Development (1987), Brundtland has summarized a common view of armed conflict as:
Nations have often fought to assert or resist control over war materials, energy supplies, land, river basins, sea passages and other key environmental resources.
Similar view of tussle over control of natural resources as the primary reason behind conflicts has been echoed in many other scholars’ work. Thus, Renner et al. (1991) claimed that “throughout human history, but particularly since the system of sovereign nation states, struggles over access to and control over natural resources ... have been a root cause of tension and conflict” and that “history provides numerous examples of how states and nations were destabilized by environmental collapse leading to famine, migration, and rebellion.” Similarly citing the example of Pacific war (1879-84) between Chile and Peru over guano deposits, Brock (1991) asserted that “control over natural resources has always been important in enabling a country to wage war.”

In the early 1970s, there was an emergence of environmental issues on the international
political agenda, since then there has been increasing concern that environmental disruption is
likely to increase the number of disputes originating from competition for scarce resources
(Gleditsch, 1998). This view was echoed in the speech of previous Norwegian Defense Minister
Johan Jørgen Holst (1989) when he cautioned the world that environmental stress was likely to
become an increasingly potent contributing factor to major conflicts between nations. Similarly,
he then Secretary General of the Habitat conference in 1996 told participants that “the scarcity of
water is replacing oil as a flashpoint for conflict between nations” (Lonergan, 1997).
More recent variety of territorial conflict concerns the economic zone, a matter of dispute
between most countries which are at the close vicinity of the sea and where tiny islands can
sometimes become monumental national interest because of their consequences for controlling the
shipping lane at sea. Thus, there are no less than six claimants to all or part of the Spratly Islands
in the South China Sea (Denoon & Brams, 1997), where the use of force anytime cannot be ruled
out.

As the above literature review suggest, all these previous studies has addressed conflict as
the outcome variable and focused on identification of the primary factors behind the conflicts.
However, one of the significant drawback in this line of work is that the duration of the conflict is
not taken into account. Essentially, these studies do not differentiate between prolonged conflicts
between nations (e.g., Iraq-Iran war, 1980-1988) and lone-wolf terror attack (e.g., Toulouse terror
attack, 2012). To overcome this, the present study proposes to consider the duration of the conflict as the primary outcome variable and hopes to identify if the geographical location is a contributing
factor behind the duration of the conflict.

<div>
    <a href="https://plot.ly/~prismane/129/" target="_blank" title="File5 - GDGT Survey" style="display: block; text-align: center;"><img src="https://plot.ly/~prismane/129.png" alt="File5 - GDGT Survey" style="max-width: 100%;width: 550px;"  width="550" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="prismane:129"  src="https://plot.ly/embed.js" async></script>
</div>

Dataset
------------
The dataset used for this study is Uppsala Conflict Data Program Georeferenced Event Data (UCDP GED) version 5.0 (Croicu, & Sundberg, 2016). The UCDP GED dataset is manually curated and compiled, with automatic assistance in data retrieval, filtering, data storage, and manipulation, as well as data validation. All the entries in the dataset are collected from three sets of sources:
- global newswire reporting.
- global monitoring and translation of local news performed by the BBC.
- the secondary sources such as local media, NGO and IGO reports, field reports, books, etc.

The basic unit of analysis in the UCDP GED dataset is the <i>“event”</i>, an individual incident or phenomenon of lethal violence occurring at a given time and place. More specifically Croicu et al. defined an event as:

<p style="margin-left: 40px"><i>"An incident where armed force was used by an organised actor against another organized actor, or against civilians, resulting in at least 1 direct death at a specific location and a specific date (p-2)."</i> </p>

Only events linkable to a UCDP/Peace Research Institute Oslo (PRIO) Armed Conflict, or a UCDP Non-State Conflict or a UCDP One-Sided Violence instance are included in this dataset. Events are included for the entire period, i.e. both for the years when such conflicts were active and for the years when such conflicts where not active.

The maximum (best) spatial resolution of the UCDP GED dataset is the individual village or town. The dataset is fully geocoded meaning, the coordinates of the places for each event, with its longitude and latitude values are available in the dataset. The maximum (best) temporal resolution of the dataset is the day.
The UCDP GED version 5.0 dataset contains 1,28,264 events. It is a global dataset that covers occurrences of events in the entire Globe (excluding Syria) between 1st January 1989 and 31st December 2015. However, for this study, since we are focusing only on Middle East countries, we have taken only a subset of the UCDP GED dataset consisting events from Middle East countries only. Some of the fields which were deemed to be unnecessary/redundant for this study were also removed from the UCDP dataset. As result, the final dataset used for this study consists of 16646 events. Below is a quick overview of variables that are included as part of the dataset used in this study.

 <b>a) Relid: </b> A quick machine parse-able string key describing the content of each event. The key is constructed using the abbreviation of the country name (for instance AFG for Afghanistan), the calendar year, the type of violence, the dyad or actor ID and a counter.
This variable is also a unique identifier for each event in the entire dataset.

<b>b) Year:</b> The year of the occurrence for the event.

<b>c) Where_coordinates:</b> Name of the location to which the event is assigned. Fully standardized and normalized.

<b>d) Latitude:</b> Latitude (in decimal degrees).

<b>e) Longitude:</b> Longitude of the place (in decimal degrees).

<b>f) Country:</b> Name of the country in which the event takes place.

<b>g) Date_start:</b> The earliest possible date when the event has taken place (in YYYY-MM-DD format).

<b>h) Date_end:</b> The last possible date when the event has taken place (in YYYY-MM-DD format).

<b>i) High_est:</b> The highest reliable estimate of total fatalities.
Since we are concentrating on the duration of the conflicts for these study, we have introduced one of our own variable, called Duration apart from those earlier mentioned, which represents the duration of a conflict in number of days. The Duration is calculated as:
Duration: (Date_end - Date_start) +1
So, from the above equation, the minimum duration of each conflict is one day.

References
------------

- Brams, S. J. (1997). Fair division: A new approach to the Spratly Islands controversy. International Negotiation, 2(2), 303-329.

- Brock, L. (1991). Peace through parks: the environment on the peace research agenda. Journal of Peace Research, 28(4), 407-423.

- Brundtland, G., Khalid, M., Agnelli, S., Al-Athel, S., Chidzero, B., Fadika, L., & Singh, M. (1987). Our common future. World Commission on Environment and Development. Oxford: Oxford University Press.

- Croicu, M., & Sundberg, R. (2015). UCDP Georeferenced Event Dataset Codebook Version 4.0. Journal of Peace Research, 50(4), 523-532.

- Croicu, M., & Sundberg, R. (2016). UCDP GED Codebook version 5.0, Department of
Peace and Conflict Research, Uppsala University

- Gleditsch, N. P. (1998). Armed conflict and the environment: A critique of the literature. Journal of peace research, 35(3), 381-400.

- Lonergan, S. (1997). Water resources and conflict: Examples from the Middle East. In Conflict and the Environment (pp. 375-384). Springer Netherlands.

- Sundberg, R., & Melander, E. (2013). Introducing the UCDP georeferenced event dataset. Journal of Peace Research, 50(4), 523-532.

- Wallensteen, P., & Sollenberg, M. (2001). Armed Conflict, 1989-2000. Journal of Peace Research, 38(5), 629-644.
