#!/usr/bin/python
import requests
from bs4 import BeautifulSoup as Soup
import csv
import os
import sys


def write_urls_csv(url, filename):
    r = requests.get(url)
    soup = Soup(r.content, 'lxml')
    urls = soup.findAll('url')

    with open(filename, 'w') as csvfile:
        urls_writer = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_ALL)

        for url in urls:
            loc = url.find('loc').string
            urls_writer.writerow([loc])


def warmup_from_csv(filename):
    updated_rows = []
    total_time = 0
    with open(filename, 'r') as f:
        reader = csv.reader(f)
        for i, row in enumerate(reader, 1):
            print('{}: {}'.format(i, row[0]))
            r = requests.get(row[0])
            updated_rows.append([row[0], True])
            time = r.elapsed.total_seconds()
            print('status: {} in {}s'.format(r.status_code, time))
            total_time += time

        print('Total Time: {}s'.format(total_time))

    # save updated file
    with open(filename, 'w') as csvfile:
        urls_writer = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_ALL)
        urls_writer.writerows(updated_rows)


if __name__ == '__main__':
    domain = sys.argv[1]

    url = 'https://{}/sitemap.xml'.format(domain)
    filename = '{}_urls.csv'.format(domain)

    if not os.path.exists(filename):
        write_urls_csv(url, filename)
    else:
        print('urls already laoded from sitemap.xml')
    warmup_from_csv(filename)