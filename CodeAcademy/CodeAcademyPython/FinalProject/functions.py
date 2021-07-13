from data import cinemas
from data import movies
from data import citites


def search_movie():
    print("-------------------------------------------------------")
    for element in movies:
        print(element)
    print("-------------------------------------------------------")
    decision = ""
    while decision != 'y' and decision != 'n':
        decision = input(
            "Are you interested in any of these movies (type y for yes and n for no): ")
    if decision == 'y':
        movie_choice = input(
            "Type the beggining of the movie so that we can help in finding best movie for you: ")

    elif decision == 'n':
        print("Sorry but thats what we can offer so far. Please come back later.")
        quit()

    result = []
    for el in movies:
        if movie_choice == el[0].lower():
            print(el)
            result.append(el)
    if len(result) == 1:
        for element in result:
            return element
    elif len(result) > 1:
        movie = ""
        while movie not in result:
            movie = input(
                "Are you interested in one of those movies. If so please write its full title : ")
        for el in result:
            if movie == el:
                return el
    else:
        print("Movie beggining with this letter can not be found in our database Please Try another letter.")
        search_movie()


def search_cinema(data):
    outcome = []
    for element in cinemas:
        for key, value in element.items():
            for el in value:
                if el == data:
                    outcome.append(element)
    if len(outcome) > 0:
        for out in outcome:
            print("-------------------------------------------------------")
            for key, value in out.items():
                print(value, "\n")
