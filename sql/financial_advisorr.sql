-- This SQLite script creates and populates three tables based on the provided finance PDF documents:
-- 1. AssetAllocationGuidelines: Derived from finance1.pdf
-- 2. DebtAndLiquidityGuidelines: Derived from finance2.pdf
-- 3. RetirementAndMarketGuidelines: Derived from finance3.pdf
-- This file can be executed in any SQLite environment.

-- Drop existing tables to ensure idempotent execution
DROP TABLE IF EXISTS AssetAllocationGuidelines;
DROP TABLE IF EXISTS DebtAndLiquidityGuidelines;
DROP TABLE IF EXISTS RetirementAndMarketGuidelines;

-- --------------------------------------------------------------------------------
-- Table 1: AssetAllocationGuidelines
-- Based on finance1.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [AssetAllocationGuidelines]
(
    [RiskCategory] TEXT NOT NULL PRIMARY KEY,
    [EquityAllocationPercent] INTEGER,
    [DebtAllocationPercent] INTEGER,
    [RecommendedInstruments] TEXT,
    [TargetInvestorProfile] TEXT,
    [ReviewFrequency] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: DebtAndLiquidityGuidelines
-- Based on finance2.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [DebtAndLiquidityGuidelines]
(
    [Category] TEXT NOT NULL PRIMARY KEY,
    [DTIRange] TEXT,
    [GuidelineDescription] TEXT,
    [RecommendedAction] TEXT,
    [PriorityLevel] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 3: RetirementAndMarketGuidelines
-- Based on finance3.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [RetirementAndMarketGuidelines]
(
    [LifeStage] TEXT NOT NULL PRIMARY KEY,
    [PrimaryInvestmentFocus] TEXT,
    [RecommendedInstruments] TEXT,
    [MarketAdjustmentStrategy] TEXT,
    [RiskManagementNotes] TEXT
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate AssetAllocationGuidelines
INSERT INTO AssetAllocationGuidelines 
(RiskCategory, EquityAllocationPercent, DebtAllocationPercent, RecommendedInstruments, TargetInvestorProfile, ReviewFrequency)
VALUES
('Low Risk', 20, 80, 'Fixed Deposits, Government Bonds, Short-Duration Debt Funds', 'Income-focused investors seeking capital preservation', 'Annual Review'),
('Medium Risk', 65, 35, 'Equity Mutual Funds, Index Funds, Debt Funds', 'Salaried individuals aged 25–40 with stable income', 'Periodic Rebalancing'),
('High Risk', 80, 20, 'Equity-Oriented Mutual Funds, Growth Funds', 'Long-horizon investors with high income stability', 'Annual or Life-Event Based');

-- Populate DebtAndLiquidityGuidelines
INSERT INTO DebtAndLiquidityGuidelines
(Category, DTIRange, GuidelineDescription, RecommendedAction, PriorityLevel)
VALUES
('Healthy Debt Level', 'Below 35%', 'Allows sufficient flexibility for savings and long-term investments', 'Continue balanced investing and savings', 'Low'),
('Moderate Risk Debt', '35%–40%', 'Signals increasing financial pressure and reduced investment capacity', 'Limit new debt and increase repayments', 'Medium'),
('High Debt Stress', 'Above 40%', 'Indicates financial stress and vulnerability to income disruption', 'Prioritize debt repayment over investing', 'High'),
('Emergency Fund', 'N/A', 'Minimum six months of essential expenses required for stability', 'Maintain funds in liquid, low-risk instruments', 'Critical');

-- Populate RetirementAndMarketGuidelines
INSERT INTO RetirementAndMarketGuidelines
(LifeStage, PrimaryInvestmentFocus, RecommendedInstruments, MarketAdjustmentStrategy, RiskManagementNotes)
VALUES
('Early Career (20s–30s)', 'Growth and Wealth Accumulation', 'Equity Mutual Funds, Index Funds, SIPs', 'Gradual adjustments based on inflation and volatility', 'Leverage compounding and avoid market timing'),
('Mid Career (40s)', 'Balanced Growth and Stability', 'Balanced Funds, Equity-Debt Mix', 'Reduce volatility exposure while maintaining growth', 'Begin gradual risk reduction'),
('Pre-Retirement (50s+)', 'Capital Preservation and Income Stability', 'Bonds, Debt Funds, Income Instruments', 'Shift towards short-duration debt during rate hikes', 'Protect accumulated wealth from market shocks');

COMMIT;
