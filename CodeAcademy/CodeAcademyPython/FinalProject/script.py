from data import cinemas
from data import movies
from data import citites
from functions import search_movie, search_cinema

print("*******************************************************")
print("*******************************************************")
print("*******   ****   ********   **********   **************")
print("*******   ****   ********   **********   **************")
print("*******   ****   ********   **********   **************")
print("*******          ********   **********   **************")
print("*******   ****   ********   **********   **************")
print("*******   ****   ********   ***************************")
print("*******   ****   ********   **********   **************")
print("*******************************************************")
print("*******************************************************")
print("-------------------------------------------------------")
print("**                                                   **")
print("**                                                   **")
print("**                                                   **")
print("**          Welcome to local movie database          **")
print("**                                                   **")
print("**                                                   **")
print("**                                                   **")
print("-------------------------------------------------------")
print("\n")
print("What movie do you want to watch?")
a = search_movie()
print("\n")
search_cinema(a)

