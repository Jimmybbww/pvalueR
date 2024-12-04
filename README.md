# pvalueR

## 簡介
這個 R 套件提供了一個簡單且有效的函數，用於計算統計分析中的 p-value。它特別適合需要基於效果量（effect size）、標準誤（standard error）和樣本數（sample size）來進行統計推論的研究場景。

## 安裝
您可以使用以下指令安裝此套件：

```r
# 從 GitHub 安裝
devtools::install_github("Jimmybbww/pvalueR")
```

## 使用方法
```r
library(pvalueR)

# 基本範例
result <- calculate_pvalue(
  effect_size = 0.5,  # 效果量
  se = 0.1,          # 標準誤
  n = 100            # 樣本數
)

print(result)
```

## 函數參數說明
- `effect_size`: 效果量（數值）
- `se`: 標準誤（正數）
- `n`: 樣本數（整數，>= 2）

## 注意事項
- 所有參數都必須是數值型態
- 標準誤必須大於 0
- 樣本數必須至少為 2
- 函數返回雙尾檢定的 p-value

## 開發相關
歡迎提供建議和改進意見。如果您發現任何問題或有功能改進的建議，請提出 Issue 或 Pull Request。

## 贊助支持
如果您覺得這個套件對您的研究有幫助，可以考慮支持我們的開發：
- 在 GitHub 上給予專案一個星星 ⭐
- 分享這個套件給其他研究者
- 提供功能改進建議或程式碼貢獻