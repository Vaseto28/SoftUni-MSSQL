SELECT DepositGroup, SUM(DepositAmount) AS LongestMagicWand FROM WizzardDeposits
WHERE MagicWandCreator = 'Ollivander family'
GROUP BY DepositGroup