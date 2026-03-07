# Hops Project 2025

This repository contains the code and analysis for an academic research project on powdery mildew disease spread and fungicide management in hop production systems.

## Overview

This project analyzes disease transmission patterns in hop farms using network analysis, maximum likelihood estimation, and spatial modeling. The research investigates the spread of powdery mildew across hop-growing regions and evaluates intervention strategies including fungicide spraying policies.

## Project Structure

```
hops-project-2025/
├── data/                    # Data files (anonymized for privacy)
├── notebooks/              # Jupyter notebooks for analysis
│   ├── 1-data-preprocessing.ipynb
│   ├── 2.3-mle all data_power.ipynb
│   ├── 2.4-confidence-intervals.ipynb
│   ├── 12.1.6-v6-transmissivity-simulations_power.ipynb
│   ├── 13.1-map-visualization.ipynb
│   └── 13.2.1-heatmaps.ipynb
├── reports/                # Generated analysis reports and figures
├── requirements.txt        # Python dependencies
└── LICENSE                # MIT License
```

## Key Features

- **Data Preprocessing**: Anonymized processing of fungicide spray records and disease data
- **Maximum Likelihood Estimation (MLE)**: Statistical parameter estimation for disease transmission models
- **Confidence Intervals**: Uncertainty quantification for model parameters
- **Network Analysis**: Spatial analysis of disease spread using graph theory
- **Transmissivity Simulations**: Monte Carlo simulations for disease transmission scenarios
- **Visualization**: Interactive maps and heatmaps for spatial disease patterns

## Installation

1. Clone the repository:
```bash
git clone https://github.com/joshfpedro/hops-project-2025.git
cd hops-project-2025
```

2. Create a virtual environment (recommended):
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

## Requirements

The project requires Python 3.x and the following main packages:

- Data Analysis: `pandas`, `numpy`, `scipy`, `statsmodels`, `scikit-learn`
- Visualization: `matplotlib`, `seaborn`, `plotly`, `folium`
- Geospatial: `geopandas`, `geopy`, `pyproj`
- Network Analysis: `networkx`, `igraph`
- Jupyter: `IPython`, `ipykernel`, `jupyter_dash`, `ipywidgets`
- Utilities: `tqdm`, `joblib`, `tabulate`

See `requirements.txt` for a complete list.

## Usage

### Data Preprocessing

Start with the data preprocessing notebook to prepare anonymized datasets:

```bash
jupyter notebook notebooks/1-data-preprocessing.ipynb
```

**Important**: All grower data has been anonymized. Grower identifiers are tokenized as `GRW_...` to protect privacy.

### Analysis Pipeline

1. **Data Preprocessing** (`1-data-preprocessing.ipynb`): Clean and prepare spray and disease data
2. **MLE Analysis** (`2.3-mle all data_power.ipynb`): Estimate disease transmission parameters
3. **Confidence Intervals** (`2.4-confidence-intervals.ipynb`): Calculate parameter uncertainties
4. **Transmissivity Simulations** (`12.1.6-v6-transmissivity-simulations_power.ipynb`): Run disease spread scenarios
5. **Visualization** (`13.1-map-visualization.ipynb`, `13.2.1-heatmaps.ipynb`): Generate spatial visualizations

### Running Notebooks

```bash
jupyter notebook
```

Navigate to the `notebooks/` directory and open the desired notebook.

## Data Privacy

This repository contains anonymized data only. All personally identifiable information (PII) has been removed or tokenized. Grower identities are protected while maintaining the scientific integrity of the analysis.

## Citation

If you use this code or methodology in your research, please cite the accompanying academic paper:

```
[Citation details to be added upon publication]
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions about this research or code, please contact:
- Joshua Pedro (joshfpedro)

## Acknowledgments

This research was conducted as part of an academic study on disease management in agricultural systems. We thank the hop-growing community for their cooperation while maintaining complete anonymity of all participants.
