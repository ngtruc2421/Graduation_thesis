# age=20
# price=23.34
# name="Alex"
# partion=True
# print("Hello world")

# fullName=input("What is your name: ")
# print("Welcome"+fullName)
# birthday=input("What is your birthday: ")
# age=2024- int(birthday)
# float(age)
# bool(age)
# print("Your age is"+ str(age))
# print(age)
# one=input("NUmber one: ")
# two=input("NUmber two: ")

# sum=float(one)+ float(two)
# print("SUM: "+str(sum)) #hàm print là hàm in ra chuỗi khi chuỗi nó in ra có chứa một giá trị khác string thì phải ép kiểu nó

#string
# course="Javascript"
# print(course.upper())
# print(course.find("i")) #vị trí chứa ký tự muốn tìm
# print(course.replace("J","X"))
# print("Javascriptt" in course) # rs= true,false

#Operater
# print(8+1)
# print(8-1)
# print(8/2)
# print(8*1)
# print(8**2) # bình phương
# print(8//1)
# print(8%1) # chia lấy nguyên

# x=3+3*2 # =9
# y=(3+3)*2 # =12
# print(x)
# print(y)

#  and, or, not
# price=20
# print(price>10 and price <15) #false
# print(price>10 or price<15) #true
# print(not price<30) #false
# print( not price<10) #true

# if, elif, else statements
# month=2
# if month<13 and month> 9:
#     print("It is fall")
# elif month<=9 and month>6:
#     print("It is summer")
# elif month<=6 and month>3:
#     print("it is spring")
# else:
#     print("it is winter")

# while loop
# index=0
# while index<=5:
#     print(index)
#     index+=1
    
# list and list method
# langues=["english","japanese","chinese","spanish"]
# langues[0]="EL"
# print(langues[0])
# print(langues[-1])
# print(langues[0:2]) #không bắt đầu bằng số âm

import json


number=[0,1,2,3,4,5]
# number.insert(6,6)
# number.remove(0)
# print(number)
# print(1 in number)
# print(len(number))
# number.clear()
# print(number)

#for loop
# for item in number:
#     print(item)

# i=0
# while i < len(number):
#     print(number[i])
#     i+=1

# range() function
# num=range(5)
# num=range(5,10)
# num=range(5,10,2)
# print(num) #= range(5,10)
# for n in num:
#     print(n)
# for n in range(10,20,2):
#     print(n)

#tuples
nums=(1,2,3)
# nums[1]=0 TypeError: 'tuple' object does not support item assignment

#function
# def print_numbers(phone,name, birth_year):
#     age=2024-birth_year
#     print("Your phone is "+ phone)
#     print("Your name is "+ name)
#     print("Your age is "+ str(age))

# p="0901036173"
# print_numbers(p,"TRUC",2001)

# def When_you_add_ten_years_old(age):
#     new_age=age+10
#     return new_age
# assign_age=When_you_add_ten_years_old(23)
# print("Ten years later: "+str(assign_age))

#Huong doi tuong
# from peopleClass import people

# people_1= people("Harry Poster",18)
# print(people_1.name)
# print(people_1.age)

# people_1.eat()
# people_1.sleep()

# Dictionary
d={
    "name":"alex",
    "age":23,
    "phone":"0109234123"
}
# #ghi file json
# with open('demo.json','w') as f:
#     json.dump("This is demo json data",f)
# # chuyển d thành dữ liệu json
# js_d=json.dumps(d)
# print(js_d)
# print(type(d))

# a=input("Name: ")
# b=float(input("Price: "))
# print("The product is "+a+" .It is "+str(b)+" vnd")

keys=d.keys() #lấy ra các keys
print(keys)
values=d.values() #lấy danh sách các giá trị
print(values)
items=d.items()
print(items)
gets=d.get("name") #lấy giá trị thông qua key được truyền vào
print(gets)
a=d.copy() #sao chép cả 1 dictionary
print(a)
pops=d.pop("ages","age default") # xóa phần tử thông qua key và trả về giá trị phần tử muốn xóa
print(pops)
print(d)
a["address"]="42 LuanDon" # thêm 1 cặp key value vào dictionary
print(a)
a["address"]="New york" #gán giá trí
print(a)