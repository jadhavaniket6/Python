def join_string(list_string):
    string = '-'.join(list_string)
    return string
    

key = input('enter key: ')
length = len(key)
print(length)

print('key is ' + key.upper() +" with length " + str(length))

chunk = input('chunk size: ')
print(int(chunk))

key_string = ([key[i:i+int(chunk)] for i in range(0, len(key), int(chunk))])
#print("the key gen is " + str(key_string))

new_string = join_string(key_string)
print(new_string)
