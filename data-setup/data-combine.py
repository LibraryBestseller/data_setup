# google colab에서 수합한 660개의 스프레드 시트를 하나로 모으는 작업 실행한 코트

import pandas as pd
from glob import glob

pwd # 파일의 현재 위치 확인

# 경로 폴더에 있는 모든 xlsx 파일 불러오기
files = glob("/content/drive/MyDrive/library_datasetup/data/2019/*.xlsx") 

# 현재 작성하고 있는 파일과 xlsx파일들이 저장된 폴더(2019)의 위치가 같아야 함
b2019 = pd.DataFrame()

for file in files:
    temp = pd.read_excel(file)
    b2019 = pd.concat([b2019, temp])

# 데이터가 24000개 맞는지 확인하기 위해 실시
b2019.info() 
