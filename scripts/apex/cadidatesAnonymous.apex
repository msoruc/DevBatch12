Candidates.coompanyName = 'softinnovas';
system.debug('start count candidates => '+ Candidates.countCandidate);


Candidates c1 = new Candidates();
Candidates.countCandidate++;
c1.Name= 'Jerry';
c1.Gender= 'Male';
c1.printCandidates();
system.debug('-------------------');

Candidates c2 = new Candidates();
Candidates.countCandidate++;
c2.Name= 'Ali';
c2.Gender= 'Male';
c2.printCandidates();
system.debug('-------------------');

Candidates.coompanyName = 'Stark Industries';

Candidates c3 = new Candidates();
Candidates.countCandidate++;
c3.Name= 'Jane';
c3.Gender = 'Female';
c3.printCandidates();

c2.printCandidates();
c1.printCandidates();
system.debug('start count candidates => '+ Candidates.countCandidate);


