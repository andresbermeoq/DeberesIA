import requests, re
import lxml.html as html

HOME_URL = 'https://www.google.com/search?q=juan+cristobal+lloret&rlz=1C5CHFA_enEC885EC885&sxsrf=ALeKk028HO4ruhu_Rfs_q7ElZQpGKRSkAg:1610430739374&source=lnms&tbm=nws&sa=X&ved=2ahUKEwjy_J6B2pXuAhWKzlkKHWv6AnYQ_AUoA3oECAUQBQ&biw=1680&bih=857'

XPATH_LINK_TO_ARTICLE = '//div[1]/div/div/div/a/@href'
XPATH_TITLE = '//div[@class="JheGif nDgy9d"]/text()'
XPATH_MESSAGE = '//div[@class="Y3v8qd"]/text()'
XPATH_DATE = '//span[@class="WG9SHc"]/span/text()'


def parse_home():
     try:
          response = requests.get(HOME_URL)

          if response.status_code == 200:
               home = response.text
               pased = html.fromstring(home)
               links_to_notice = pased.xpath(XPATH_LINK_TO_ARTICLE)
               print(len(links_to_notice))
               print(links_to_notice)
          else:
               raise ValueError(f'Status Code: {response.status_code}')

     except ValueError as vError:
          print(vError)

def run():
     parse_home()


if __name__ == '__main__':
     run()
