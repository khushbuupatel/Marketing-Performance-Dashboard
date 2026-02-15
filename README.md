# Marketing-Performance-Dashboard
Cross-channel marketing performance at a glance.

---

## 🛠️ Tech Stack

**Snowflake** – Cloud data warehouse: raw Facebook, Google, and TikTok data uploaded and unified with SQL

**Sigma Computing** – Dashboard & visualization: connected to Snowflake to create a one-page executive dashboard with KPIs, trends, and source-level comparisons, plus interactive filters for exploration.

---

# Live dashboard link
(https://app.sigmacomputing.com/embed/1-1DlFIrrhGjQj8pN2QRaA0h)


# SQL file for data transformation
* Assumption made: Engagement rate was standardized as total measurable interactions divided by impressions to allow cross-platform comparison.
* [unified_ads_data.sql](https://github.com/khushbuupatel/Marketing-Performance-Dashboard/blob/main/unified_ads_data.sql)

---

# 📊 Key Insights & Strategic Recommendations

## 1️⃣ Cross-Channel Performance Summary

### 🎯 TikTok — Awareness & Scale Driver

* Delivers the **lowest-cost reach and traffic**
* Highest engagement rates across platforms
* Absorbs the largest share of the budget
* However, shows the **weakest Conversion Rate (CVR) and highest CPA**

**Insight:** TikTok is strong at top-of-funnel awareness but underperforms in bottom-funnel conversion efficiency.

---

### 🔎 Google — High-Intent Conversion Driver

* Higher CPC compared to other platforms
* Strong Conversion Rate
* Efficient at capturing high-intent traffic

**Insight:** Google search traffic converts better due to existing user intent, making it a strong bottom-funnel channel.

---

### 💡 Facebook — Most Cost-Efficient Conversions

* Delivers the **lowest CPA**
* Balanced performance across engagement and conversion metrics

**Insight:** Facebook likely benefits from strong audience targeting, making it the most efficient channel for conversion scaling.

---

## 2️⃣ Funnel-Level Observations

* Conversions are primarily driven by **capturing existing demand** (brand search and retargeting), not cold awareness.
* Bottom-funnel campaigns outperform top-funnel campaigns in cost efficiency.
* Awareness campaigns (especially influencer collaborations and generic search) generate scale but are less efficient in driving conversions.

---

## 3️⃣ Campaign-Level Performance Highlights

**Best Performing:** Brand search & retargeting campaigns with high CTR/CVR and strong profitability.<br>
**Underperforming:** Generic search and influencer collaborations show weak conversion efficiency and low cost-effectiveness.

---

## 4️⃣ Strategic Recommendations

- Rebalance budget toward **Facebook and Google**, where CPA efficiency is strongest.
- Use **TikTok primarily as a top-of-funnel awareness channel**.
- Implement stronger **retargeting flows from TikTok traffic into Google and Facebook**.
- Optimize bottom-funnel campaigns (brand search and retargeting) to maximize incremental gains.
- Re-evaluate budget allocation for generic search and influencer collaborations due to weak efficiency.

A reallocation strategy prioritizing Facebook and Google for conversions, while leveraging TikTok for awareness and retargeting, would likely improve overall CPA and return on spend.






