import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/data/event.dart';
import 'package:flutter_application_1/data/model.dart';
import 'package:flutter_application_1/data/state.dart';

/* 
1: create a class and extends from the bloc
2: the bloc needs an event and state
3: then your class will call the super constructor and you have to put the 
default state of your class
4: calling the on method and make it a type of the events that you have created
and then pass to it the functions that you will create as: add note
5: remember you need to make a function for each operation such as : adding note
upadting and deleting
6: when you want to make an add note function you have to put in consideration
that the type of the method must be future and add the async keyword -and must
pass to the function
2 parameters the event that you already created and the emitter 
7: because you want to access the state you have to make a var that carry the 
state
8: make if condition that if the state is loaded then make a var to carry 
a list of your Model and then use the .From method so you can pass to it your 
state.yourdata
9: then add the cascade operator .. to use the add method and pass to it the 
event.data
10: then use your emit parameter to pass the variable that carries the List
11: make the else id to check if your state is initial then emit the 
event.data
12: when you try to make the update function also consider that this one must 
be future and passing two parameters which is the event and emitter 
13: also make a variable to carry the state
14: make an if condition and say if the state is loaded then make a var
that carries the state.data.map method it will return element and this 
element you will return it .id and make aternary operator to say that 
element.id == event.data.id? return event.date : return element; at the end put
.tolist
15: then emit the loadedstate and pass to it the var that carries the list
16: when you are using delete function also consider the function must be 
future and passing 2 parameters which is the event and emitter and then put async
17: create a var to carry the state 
18: make if condition that if state is loaded then make a var to carry the 
state.data.where method and it has element return the element.id and say 
!= event.id then .tolist
19: rmit the loadedstate and passing the variable that carries the list
 */
// BLoC


