#!/bin/bash
# 获取 BAIR Blog 最新研究

curl -s --max-time 15 'https://bair.berkeley.edu/blog/' 2>&1 | python3 -c '
import sys, re
from html import unescape
content = sys.stdin.read()
links = re.findall(r"/blog/\d{4}/\d{2}/\d{2}/[^\"]+", content)
titles = re.findall(r"class=\"post-link\"[^>]*>([^<]+)</a>", content)
dates = re.findall(r"<span class=\"post-meta\">([^<]+)</span>", content)
for i, l in enumerate(links[:5]):
    t = titles[i].strip() if i < len(titles) else ""
    d = dates[i].strip() if i < len(dates) else ""
    print("标题: " + t)
    print("链接: https://bair.berkeley.edu" + l)
    print("日期: " + d)
    print("---")
' 2>&1