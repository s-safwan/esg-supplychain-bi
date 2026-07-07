# Data Dictionary

| Column | Description | Data Type | Used In |
|----------|-------------|----------|---------|
| Shipment_ID | Unique shipment identifier | Integer | Primary Key |
| Shipment_Date | Date shipment occurred | Date | Time Analysis |
| Origin | Shipment origin | Text | Route Analysis |
| Destination | Shipment destination | Text | Route Analysis |
| Transport_Mode | Air, Road, Rail, Ocean | Text | KPI Calculations |
| Distance_km | Shipment distance | Decimal | Carbon Calculation |
| Weight_kg | Shipment weight | Decimal | Carbon Calculation |