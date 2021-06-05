import json
from datetime import date

today = date.today()

links_filename = 'links-' + str(today) + '.md'

with open('tabs.json', encoding='utf-8') as json_file:
    data = json.load(json_file)
    with open(links_filename, "a") as text_file:
        for p in data:
            # print('title: ' + p['title'])
            text_file.write("[{}]({})\n\n".format(p['title'], p['url']))
