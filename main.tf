import requests
from bs4 import BeautifulSoup

def scrape_amazon(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')
    
    # Find all product containers (adjust the selector as needed)
    product_containers = soup.find_all('div', {'class': 'product-container'})
    print(product_containers)

    for product in product_containers:
        # Extract product name
        product_name = product.find('h2').text.strip()

        # Extract product price
        product_price = product.fi
        # Extract product name
        product_name = product.find('h2').text.strip()

        # Extract product price
        product_price = product.find('span', {'class': 'price'}).text.strip()

        print(f"Product Name: {product_name}")
        print(f"Product Price: {product_price}")
        print("--------------------")

# Replace with the actual URL you want to scrape
url = 'https://www.amazon.com/bestsellers'


print("scrapping started ...")
scrape_amazon(url)
