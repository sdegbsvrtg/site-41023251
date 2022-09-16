from flask import Flask, request 
from flask_cors import CORS
  
import requests
import bs4
#import ssl
  
app = Flask(__name__)
CORS(app)
  
@app.route('/studlist')
@app.route('/')
def studlist():
    semester = request.args.get('semester')
    courseno = request.args.get('courseno')
    column = request.args.get('column')

    if semester == None:
        semester = '1091'
    if courseno == None:
        courseno = '0762'
    
    headers = {'X-Requested-With': 'XMLHttpRequest'}

    url = 'https://qry.nfu.edu.tw/studlist.php?selyr=1091&seqno=0762'
  
    result = requests.get(url)
    soup = bs4.BeautifulSoup(result.content, 'lxml')
    table = soup.find('table', {'class': 'tbcls'})
    data = []
    rows = table.find_all('tr')
    for row in rows:
        cols = row.find_all('td')
        cols = [ele.text.strip() for ele in cols]
        data.append([ele for ele in cols if ele]) # Get rid of empty values
    output = ""
    for i in data[2:]:
        #print(i[0])
        if column == "True":
            output +=i[0] + "</br>"
        else:
            output +=i[0] + "\n"
        
    return output
    #return  str(pselyr) + " + " +str(pseqno)
  
# 即使在近端仍希望以 https 模式下執行
#context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
#context.load_cert_chain('localhost.crt', 'localhost.key')

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000, debug=True)