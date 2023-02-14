SELECT DepositGroup, SUM(DepositAmount) AS LongestMagicWand FROM WizzardDeposits
GROUP BY DepositGroup