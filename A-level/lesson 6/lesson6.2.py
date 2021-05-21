python = {'ivanov','petrov','sidorov'}
front_end = {'ivanov','moxov','goroxov'}
fullstack = {'ivanov','petrov','sidorov'}
java = {'ivanov','goroxov'}

fist_task = python.intersection(front_end) | python.intersection(fullstack) | python.intersection(java) | front_end.intersection(java) | front_end.intersection(fullstack) | fullstack.intersection(java)
print('Студенты, которые учатся в двух и более группах:', list(fist_task))

second_task = (python | fullstack | java) - front_end
print('Cтуденты, которые не учатся на фронтенде:', list(second_task))

thied_task = python.symmetric_difference(java)
print('Студенты, которые изучают Python или Java:', list(thied_task))