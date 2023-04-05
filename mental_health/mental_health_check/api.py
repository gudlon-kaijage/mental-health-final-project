import requests
#otp
# data = {'code':'code', 'is_used':'is_used', 'user':'user', 'date_created':'2023-05-04'}

# disease
# data = {'name':'anxiety', 'Patient':1, 'description':'description'}

#user
# data = {'username':'username', 'email':'yahoo1234@gmail.com', 'password':'password'}

#factor
# data = {'name':'anxiety', 'description':'description', 'disease':1}

#progress
# data = {'patient':1, 'date':2023-05-04, 'mood':'happy', 'thoughts':'am feeling well', 'triggers':'am doing just fine', 'coping_strategies':'am running and eating well', 'advice':1}

#advice
# data = {'title':'advice on anxiety', 'description':'description', 'disease':1, 'Patient':1}

# data=requests.get('http://127.0.0.1:8000/listOtpCode')

data=requests.post('http://127.0.0.1:8000/addProgress', data=data)

# print(data.status_code)

print(data.content)