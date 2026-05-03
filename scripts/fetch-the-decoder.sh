#!/bin/bash
# 获取 The Decoder RSS Feed

curl -s --max-time 15 'https://the-decoder.com/feed/' 2>&1 | python3 -c '
import sys, re
from html import unescape
content = sys.stdin.read()
items = re.findall(r"<item>(.*?)</item>", content, re.DOTALL)
for item in items[:5]:
    title = re.search(r"<title>(.*?)</title>", item)
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
' 2>&1