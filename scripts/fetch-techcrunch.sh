#!/bin/bash
# 获取 TechCrunch AI（需要代理）

curl -s --max-time 15 -x http://127.0.0.1:7892 'https://techcrunch.com/tag/artificial-intelligence/feed/' 2>&1 | python3 -c '
import sys, re
from html import unescape
content = sys.stdin.read()
items = re.findall(r"<item>(.*?)</item>", content, re.DOTALL)
count = 0
for item in items:
    if count >= 5: break
    title = re.search(r"<title><!\[CDATA\[(.*?)\]\]></title>", item)
    link = re.search(r"<link>(.*?)</link>", item)
    pub = re.search(r"<pubDate>(.*?)</pubDate>", item)
    if title:
        t = unescape(title.group(1))
        l = link.group(1).strip() if link else ""
        p = pub.group(1)[:16] if pub else ""
        print("标题: " + t)
        print("链接: " + l)
        print("日期: " + p)
        print("---")
        count += 1
' 2>&1