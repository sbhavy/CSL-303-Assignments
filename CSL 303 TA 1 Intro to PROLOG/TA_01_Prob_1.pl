group(dog,mammal).                          % a dog is a mammal
group(sparrow,bird).                        % a sparrow is a bird
animal(X):-group(X,mammal);group(X,bird).   % something is an animal, if it is a mammal or a bird