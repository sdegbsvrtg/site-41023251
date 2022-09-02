import struct
import os
# 從三角形頂點計算 normal 用
import numpy as np

#load stl file detects if the file is a text file or binary file
def load_stl(filename):
    #read start of file to determine if its a binay stl file or a ascii stl file
    fp=open(filename,'rb')
    header=fp.read(80)
    filetype=header[0:5]
    # 這裡必須要能夠分辨二位元字串與文字字串
    #print (type(filetype))
    #print (filetype)
    fp.close()
 
    # for Python 3
    if filetype==b'solid':
    # for Python 2
    #if filetype=='solid':
        print ("讀取文字檔案格式:"+str(filename))
        load_text_stl(filename)
    else:
        print ("讀取二位元檔案格式:"+str(filename,))
        load_binary_stl(filename)
 
#load binary stl file check wikipedia for the binary layout of the file
#we use the struct library to read in and convert binary data into a format we can use
def load_binary_stl(filename):
    '''
    二位元 STL 檔案格式如下:
    檔案標頭共有 80 個字元(bytes), 內容通常省略, 但是內容不可使用 solid, 以免與文字檔案 STL 混淆
    UINT8[80] – Header
    UINT32 – Number of triangles (I:佔 4 bytes 的 unsigned integer)
 
    foreach triangle
    REAL32[3] – Normal vector (f:每一座標分量為一佔 4 bytes 的 float, 共佔 12 bytes)
    REAL32[3] – Vertex 1
    REAL32[3] – Vertex 2
    REAL32[3] – Vertex 3
    UINT16 – Attribute byte count (H:兩個 bytes 的 unsigned short, 表示 attribute byte count)
    end
 
    '''
    global plist
 
    fp=open(filename,'rb')
    header=fp.read(80)
 
    triangle_number = struct.unpack('I',fp.read(4))[0]
    count=0
    while True:
        try:
            p=fp.read(12)
            if len(p)==12:
                n=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
 
            p=fp.read(12)
            if len(p)==12:
                p1=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p1)
            p=fp.read(12)
            if len(p)==12:
                p2=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p2)
            p=fp.read(12)
            if len(p)==12:
                p3=[struct.unpack('f',p[0:4])[0],struct.unpack('f',p[4:8])[0],struct.unpack('f',p[8:12])[0]]
                plist.append(p3)
            # 使用 count 來計算三角形平面個數
            # triangle_number 為 STL 檔案中的三角形個數
            count += 1
            # 在前面 12*4 個 bytes 的 normal 與三個點資料後, 為
            # 一個 2 bytes 長的 unsigned short, 其值為零, 為 attribute
            fp.read(2)
            # 讀完所有三角平面後, 即跳出 while
            if count > triangle_number:
                break
        except EOFError:
            break
    fp.close()
 
 
def load_text_stl(filename):
    global list
    for dataline in open(filename,"r").readlines():
        if not dataline.strip(): # skip blank lines
            continue
        field = dataline.split() # split with no argument makes the right place!
        if field[0] == "vertex":
            plist.append([float(x) for x in field[1:4]])

# Read STL file, only use vertex-line with xyz coordinates
# plist is point list
plist = []
# 讀進 ASCII 格式的 STL 後存入 global list 變數
ascii_stl_file = "link2_ascii.stl"
binary_stl_file = "link2_converted_binary.stl"
load_stl(os.path.abspath('')+'/'+ ascii_stl_file)

def calculate_normal(p1, p2, p3):
    p12 = p2-p1
    p23 = p3-p2
    #calculate the cross product
    return np.cross(p12, p23) 
    
# 已經取得 point list, 查驗 plist 內容
#print(plist)
 
class StLFacet:
    def __init__(self, normal, v1, v2, v3, att_bc=0):
        self.coords = [normal, v1, v2, v3]
        self.att_bc = att_bc
 
class StL:
    def __init__(self, header):
        self.header = header
        self.facets = []
    def add_facet(self, facet):
        self.facets.append(facet)
    def get_binary(self):
        # 原先 2.0 的版本
        #out = ['%-80.80s' % self.header]
        # 改為 Python 3.0 格式
        # 第一行標頭的格式
        header = ['%-80.80s' % self.header][0]
        # 利用 bytes() 將標頭字串轉為二位元資料
        out = [bytes(header,encoding="utf-8")]
        # 接著則計算三角形面的數量, 並以二位元長整數格式存檔
        out.append(struct.pack('L',len(self.facets)))
        # 接著則依照法線向量與三個點座標的格式, 分別以浮點數格式進行資料附加
        for f in self.facets:
            for coord in f.coords:
                out.append(struct.pack('3f', *coord))
            # att_bc 則內定為 0
            out.append(struct.pack('H', f.att_bc))
        return b"".join(out)
 
# 必須由三角形座標點求每一個 face 的 normal, 之後建立 StLFacet 後組成 binary STL 內容
stl = StL('Header ...')
for i in range(len(plist)):
    # 每三個點組成一個三角形
    if i%3 == 0:
        vertices = np.array(plist[i]), np.array(plist[i+1]), np.array(plist[i+2])
        #print(vertices)
        normal = np.array(calculate_normal(vertices[0], vertices[1], vertices[2]))
        #print(normal)
        stl.add_facet(StLFacet(tuple(normal), tuple(vertices[0]), tuple(vertices[1]), tuple(vertices[2])))

stl_binary = open("link2_converted_binary.stl", "wb")
stl_binary_content = stl.get_binary()
stl_binary.write(stl_binary_content)
print("已經將 link2_ascii.stl 轉為 link2_converted_binary.stl")
