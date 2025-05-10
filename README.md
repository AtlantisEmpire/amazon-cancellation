#  Amazon  Cancellation Analysis

This project analyzes cancellation patterns in Amazon  orders, aiming to identify key factors contributing to cancellations. Using SQL for data manipulation and analysis, and Power BI for interactive visualizations, the project uncovers trends and insights to inform strategies for reducing order cancellations.



## Data Source
- 
-   Dataset is from kaggle {https://www.kaggle.com/datasets/thedevastator/unlock-profits-with-e-commerce-sales-data} , it contains sales transaction data.
-   Key columns include: `Order ID`, `Date`, `Status`, `Fulfilment`, `Category`, `Size`, `Amount`, `ship-city`, `ship-state`, `ship-country`, etc.



##  Tools Used

-   **SQL** – Data cleaning, transformation, and analytical queries (specifically focusing on aggregate functions and filtering).
-   **Power BI** – Data visualization and interactive dashboard creation for exploring cancellation trends.



## Methodology

1.  **Data Loading:** Raw dataset loaded into a local SQL database.
2.  **Data Cleaning and Transformation:**
    -   Ensured correct data types for columns like `Date`.
    -   Filtered data to focus on relevant order statuses (e.g., "Cancelled," "Shipped").
3.  **Metric Calculation:**
    -   Calculated **Cancellation Rate** using the formula: `(SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*)) * 100`
4.  **Cancellation Analysis:**
    -   **Temporal Analysis:** Examined cancellation rates over time (monthly) using the `Date` column.
    -   **Categorical Analysis:** Analyzed cancellation rates by `Category`, `Fulfilment`, and `Size`.
5.  **Data Visualization:**
    -   Developed an interactive dashboard in Power BI to visualize key metrics and trends.
    -   Used visualizations such as bar charts, line charts, and maps to present the findings.



##  Key Results & Findings

-   **Fulfillment Impact:** Orders fulfilled by merchants exhibit a higher cancellation rate compared to those fulfilled by Amazon.
-   **Size Sensitivity:** Certain sizes (e.g., XS, S) may have a higher propensity for cancellation.
-   **Category Variations:** Cancellation rates vary significantly across different apparel categories (e.g., Kurta, Set).
-   **Geographical Trends:** Cancellation patterns show variations across different shipping destinations (cities, states, and countries).
-   **Temporal Patterns:** Cancellation rates fluctuate over time, potentially influenced by seasonal factors or other external events.



##  Recommendations

-   **Fulfillment Optimization:** Prioritize or incentivize Amazon fulfillment, especially for categories with high cancellation rates.
-   **Inventory Management:** Investigate and optimize inventory management for sizes with high cancellation rates to ensure availability and reduce delays.
-   **Category-Specific Strategies:** Implement category-specific strategies to address the unique drivers of cancellations in different apparel segments.
-   **Shipping and Logistics:** Analyze geographical cancellation trends to identify potential issues in shipping and logistics to specific regions.
-   **Demand Forecasting:** Incorporate temporal cancellation patterns into demand forecasting models to improve inventory planning and reduce cancellations during peak periods.


