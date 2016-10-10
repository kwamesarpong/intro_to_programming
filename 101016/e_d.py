def read_file(file_name):
	with open(file_name) as fr:
		content = fr.read()
	return content


def write_to_file(content, file_name):
	with open(file_name, 'w') as fw:
		fw.write(content)


def cipher_e (nkey, plaintext):
	ciphertext = ''
	for x in plaintext:
		ciphertext += chr(ord(x) + nkey)
	return ciphertext


def cipher_d (nkey, ciphertext):
	plaintext = ''
	for x in ciphertext:
		plaintext += chr(ord(x) - nkey)
	return plaintext


def key_v (key):
	nkey = 0
	for x in key:
		nkey += ord(x)
	if nkey > 127:
		nkey = nkey % 126
		return nkey
	return nkey


def encrypt (key, file_name):
	text = read_file(file_name)
	nkey = key_v(key)
	ctext = cipher_e(nkey, text)
	write_to_file(ctext, file_name)


def decrypt(key, file_name):
	text = read_file(file_name)
	nkey = key_v(key)
	ptext = cipher_d(nkey, text)
	write_to_file(ptext, file_name)
