# 🎲 Project 5: Counting and Probability with R

This project explores fundamental probability and counting concepts using R, focusing on practical applications such as ball color/label distributions, drawing probabilities, coin flipping simulations, and factorial calculations. It also includes a challenge section on soccer game win probabilities and combinatorics.

---

## 📊 Dataset Overview

The ball dataset contains entries for colored balls labeled from A–E.

### ✅ Frequency Tables

- **Color Counts:**
  | Color   | Count |
  |---------|-------|
  | Blue    | 307   |
  | Green   | 192   |
  | Red     | 408   |
  | Yellow  | 93    |

- **Label Counts:**
  | Label | Count |
  |-------|-------|
  | A     | 130   |
  | B     | 305   |
  | C     | 59    |
  | D     | 325   |
  | E     | 181   |

---

## 📈 Visualizations

- Bar plot of counts for each color of ball
- Bar plot of counts for each label of ball

---

## 🔢 Probability Calculations

| Scenario                                               | Description                                     |
|--------------------------------------------------------|-------------------------------------------------|
| Drawing a green ball                                   | P(Green) = 192 / Total                          |
| Drawing blue or red                                    | P(Blue ∪ Red)                                   |
| Label A or C                                           | P(A ∪ C)                                        |
| Yellow ball with label D                               | P(Yellow ∩ D)                                   |
| Yellow ball or label D                                 | P(Yellow ∪ D)                                   |
| Blue followed by red (no replacement)                  | Dependent probabilities                         |
| Four green balls in a row (no replacement)             | Dependent probabilities                         |
| Red followed by label B (no replacement)               | Composite probability                           |

---

## 🧮 Custom Function

- `my_factorial(n)` — Implements factorial logic  
  - `my_factorial(0) = 0`  
  - `my_factorial(3) = 6`  
  - `my_factorial(5) = 120`  

---

## 🪙 Coin Flip Simulation (Unfair Coin)

- Probability of heads = 0.6, tails = 0.4
- All 16 possible outcomes of flipping the coin 4 times are considered

### 🧮 Derived Probabilities

| Outcome Count Description           | Variable         |
|------------------------------------|------------------|
| Probability of exactly 3 heads     | P(X = 3)         |
| Probability of 2 or 4 heads        | P(X = 2 or 4)    |
| Probability of ≤ 3 heads           | P(X ≤ 3)         |

### 📊 Visuals

- Bar chart: `#Heads` vs. `Probability`

---

## ⚽ Soccer Game (Optional Challenge)

- 10 games: 5 home (75% win chance), 5 away (50% win chance)

| Scenario                                       | Description                                  |
|-----------------------------------------------|----------------------------------------------|
| Probability of exactly 10 wins                 | All wins in both home and away               |
| Probability of more than one win               | P(X > 1)                                     |
| Ways to randomly select 3 home + 2 away wins   | Combinatorics: choosing combinations         |

---

## ✅ Key Takeaways

- Used R to compute probabilities with real datasets  
- Implemented combinatorial logic programmatically  
- Modeled conditional, joint, and marginal probabilities  
- Gained hands-on experience with simulations and outcome-based probability  

---

## 🧠 Author

**Mohammed Saif Wasay**  
*Data Analytics Graduate — Northeastern University*  
*Machine Learning Enthusiast | Passionate about turning data into insights*  

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/mohammed-saif-wasay-4b3b64199/)
