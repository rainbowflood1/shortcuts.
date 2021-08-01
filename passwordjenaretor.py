import secrets
import string
password = ''.join(secrets.choice(string.ascii_letters + string.digits) for i in range(9))
print(password)