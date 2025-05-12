# E-Commerce Comparison Project

## Overview
This project conducts a comprehensive price and service comparison between global e-commerce giants (Amazon and eBay) and a local platform (Empik) across different product categories. This comparison highlights the differences between international marketplace leaders and regional e-commerce solutions. Using web scraping techniques, the project collects and analyzes data on product prices, ratings, shipping costs, delivery times, and other relevant metrics.

## Project Structure

```
e-Commerce-Comparison/
├── final-project.ipynb     # Main Jupyter notebook with scraping and analysis code
├── df.csv                  # Combined dataset of all scraped products
├── Book2.twb               # Tableau workbook for data visualization
├── sql.sql                 # SQL queries for database analysis
└── scrapings/              # Directory containing raw scraped data
    ├── amazon_kitchen.csv  # Amazon scraping results for kitchen products
    ├── amazon_nikon.csv    # Amazon scraping results for Nikon cameras
    ├── amazon_tshirt.csv   # Amazon scraping results for t-shirts
    ├── ebay_kitchen.csv    # eBay scraping results for kitchen products
    ├── ebay_nikon.csv      # eBay scraping results for Nikon cameras
    ├── ebay_tshirt.csv     # eBay scraping results for t-shirts
    ├── empik_kitchen.csv   # Empik scraping results for kitchen products
    ├── empik_nikon.csv     # Empik scraping results for Nikon cameras
    └── empik_tshirt.csv    # Empik scraping results for t-shirts
```

## Technologies Used

- **Python** - Primary programming language
- **Web Scraping Libraries**:
  - Selenium - For dynamic content scraping
  - BeautifulSoup - For HTML parsing
  - Requests - For HTTP requests
- **Data Analysis**:
  - Pandas - For data manipulation and analysis
  - NumPy - For numerical operations
- **Data Visualization**:
  - Tableau - For creating interactive dashboards
- **Database Analysis**:
  - SQL - For querying and analyzing the collected data

## Data Collection Process

The project uses custom scraping functions for each e-commerce platform:
1. `scrape_amazon()` - Scrapes product data from Amazon (global platform)
2. `scrape_ebay()` - Scrapes product data from eBay (global platform)
3. `scrape_empik()` - Scrapes product data from Empik (local Polish platform)

For each platform, the following product categories were scraped:
- Kitchen products
- Nikon cameras
- T-shirts

## Data Analysis

The collected data undergoes cleaning and transformation in the Jupyter notebook before being analyzed for:
- Price comparisons across global vs. local platforms
- Delivery time analysis
- Rating distributions
- Shipping cost comparisons
- Seller reliability metrics

SQL queries were used to perform statistical analysis on the dataset, and Tableau was utilized to create visual representations of the findings.

## Dashboard Results

The interactive dashboard results can be viewed here: [[E-Commerce Comparison Dashboard](https://public.tableau.com/app/profile/rafal.kolakowski/viz/Book2_17449533261700/Dashboard1)

The dashboard includes:
- Price comparison charts between global giants and local platform
- Delivery time analysis by product category
- Rating distribution visualizations
- Shipping cost comparison
- Platform reliability metrics

Click on the link above to explore the interactive visualizations of the project findings.

## Key Insights

The analysis reveals patterns in pricing strategies, delivery times, and product availability across the three e-commerce platforms, providing valuable insights into how global giants (Amazon and eBay) compare to local e-commerce solutions (Empik) for consumers making purchasing decisions.

## Requirements

To run this project, you need:
- Python 3.7+
- Chrome WebDriver (for Selenium)
- Required Python packages (listed in the notebook imports)
- MySQL (for running the SQL queries)
- Tableau (for viewing the visualization workbook) 
