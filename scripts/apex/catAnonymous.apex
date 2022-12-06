//NORMAL World
Cat sfCat = new Cat();//NO CONSTRUCTOR
sfCat.name = 'ginger';
sfCat.color = 'orange';
system.debug('sf cat '+ sfCat);

//CONSTRUCTOR World
Cat falconCat = new Cat('garfield','white');
system.debug('batch 12 cat ' + falconCat);

Cat batch12Cat = new Cat('garfield','white');
system.debug('batch 12 cat ' + batch12Cat);

system.debug('number of cats ' + Cat.countCat);