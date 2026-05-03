#!/bin/bash
# 获取 MarkTechPost 最新文章

curl -s --max-time 15 'https://www.marktechpost.com/' 2>&1 | python3 -c '
import sys, re
from html import unescape
content = sys.stdin.read()
titles = re.findall(r"class=\"entry-title td-module-title\"><a[^>]*href=\"([^\"]+)\"[^>]*>([^<]+)</a>", content)
dates = re.findall(r"entry-date updated td-module-date[^>]*>([^<]+)</time>", content)
for i, (url, title) in enumerate(titles[:6]):
    t = unescape(title).strip()
    d = dates[i] if i < len(dates) else ""
    if t and len(t) > 10:
        print("标题: " + t)
        print("链接: " + url)
        print("日期: " + d)
        print("---")
' 2>&1