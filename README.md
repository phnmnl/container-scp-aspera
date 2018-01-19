![Logo](logo.png)

# MetaboLights Downloader
Version: 1.0.0

## Short Description

Facilities for downloading studies from MetaboLights.

## Description

MetaboLights is a database for Metabolomics experiments and derived information.
The database is cross-species, cross-technique and covers metabolite structures and their reference spectra as well as their biological roles, locations and concentrations, and experimental data from metabolic experiments.We will provide search services around spectral similarities and chemical structures.

We offer user-submission tools and have strong reporting capabilities. We will utilise and further develop de-facto standard formats where various components are encapsulated, such as the encoded spectral and chromatographic data, and associated information about the chemical structure, as well as metadata describing assays and the study as a whole.

MetaboLights semantic quality will be based on various controlled vocabularies linking data to existing resources such as BRENDA (tissue ontology) and other established ontologies. We are dedicated to collaborate closely with major parties in world-wide metabolomics communities, such as the Metabolomics Society and the associated Metabolomics Standards Initiative (MSI).

## Key features

- User-submission tools
- Strong reporting capabilities
- Utilise and further develop de-facto standard formats where various components are encapsulated

## Functionality

- Data Management / Study Dataset Download

## Approaches

- Metabolomics
- Lipidomics
- Isotopic Labelling Analysis
  
## Instrument Data Types

- MS
- NMR

## Tool Authors

- Kenneth Haug (EMBL-EBI)
- Venkata Chandrasekhar Nainala (EMBL-EBI)

## Container Contributors

- [Pablo Moreno](https://github.com/pcm32) (EMBL-EBI)
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)

## Website

- http://www.ebi.ac.uk/metabolights/


## Git Repository

- https://github.com/phnmnl/container-scp-aspera

## Installation 

MTBLS Downloader is present on all PhenoMeNal Galaxy instances on deployed Cloud Research Environments, under the Transfer category in the tool bar to the left of the screen. No installation is needed hence on PhenoMeNal Cloud Research Environments.

For local individual installation:

```bash
docker pull container-registry.phenomenal-h2020.eu/phnmnl/scp-aspera
```

## Usage Instructions

Available on PhenoMeNal Galaxy instances under PhenoMeNal H2020 Tools -> Transfer.

For direct docker usage:

```bash
docker run -v $PWD:/data -e "ASPERA_SCP_PASS=Xz68YfDe" container-registry.phenomenal-h2020.eu/phnmnl/scp-aspera -QT -l 1g fasp-ml@fasp.ebi.ac.uk:/studies/public/MTBLS174 /data
```

## Publications

- Haug, K., Salek, R. M., Conesa, P., Hastings, J., de Matos, P., Rijnbeek, M., ... & Maguire, E. (2012). MetaboLights—an open-access general-purpose repository for metabolomics studies and associated meta-data. Nucleic acids research, gks1004.
