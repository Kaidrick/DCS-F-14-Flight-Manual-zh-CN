import pynlpir

pynlpir.open()

new_dict = ""  # which should be a super long string

with open("full_text.txt", encoding='utf8') as f:
	s = f.readlines()
	s = '\n'.join(s)
	f.close()
	key_words = pynlpir.get_key_words(s, max_words=1000, weighted=True)
	for key_word in key_words:
		print('%s %s' % (key_word[0], int(key_word[1]*10)))
		new_dict += ('%s %s' % (key_word[0], int(key_word[1]*10)))