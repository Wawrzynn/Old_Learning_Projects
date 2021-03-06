from linked_list import Node, LinkedList
from blossom_lib import flower_definitions 

class HashMap:
  def __init__(self,size):
    self.array_size = size
    self.array = [LinkedList() for i in range(self.array_size)]
  
  def hash(self,key):
    return sum(key.encode())
  def compress(self,hash_code):
    return hash_code % self.array_size
  def assign(self,key,value):
    array_index = self.compress(self.hash(key))
    payload = Node([key,value])
    list_at_array = self.array[array_index]
    for element in list_at_array:
      if element[0] == key:
        element[1] = value
    list_at_array.insert(payload)
  def retrieve(self,key):
    array_index = self.compress(self.hash(key))
    list_at_array = self.array[array_index]
    for element in list_at_array:
      if element[0] == key:
        return element[1]
    return None
    payload = self.array[array_index]
    if payload is not None and payload[0] == key:
      return payload[1]
    return None


blossom = HashMap(len(flower_definitions))

for element in flower_definitions:
  blossom.assign(element[0],element[1])

