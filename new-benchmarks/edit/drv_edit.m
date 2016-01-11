function drv_edit(scale)
%%
%% Driver for the edit distance between two strings.
%%

s1_1=...
['Once upon a midnight dreary, while I pondered weak and weary,\n',...
'Over many a quaint and curious volume of forgotten lore,\n',...
'While I nodded, nearly napping, suddenly there came a tapping,\n',...
'As of some one gently rapping, rapping at my chamber door.\n',...
'`"Tis some visitor," I muttered, `tapping at my chamber door -\n',...
'Only this, and nothing more."\n',...
'\n',...
'Ah, distinctly I remember it was in the bleak December,\n',...
'And each separate dying ember wrought its ghost upon the floor.\n',...
'Eagerly I wished the morrow; - vainly I had sought to borrow\n',...
'From my books surcease of sorrow - sorrow for the lost Lenore -\n',...
'For the rare and radiant maiden whom the angels named Lenore -\n',...
'Nameless here for evermore.\n',...
'\n'];
s1_2=['And the silken sad uncertain rustling of each purple curtain\n',...
'Thrilled me - filled me with fantastic terrors never felt before;\n',...
'So that now, to still the beating of my heart, I stood repeating\n',...
'`"Tis some visitor entreating entrance at my chamber door -\n',...
'Some late visitor entreating entrance at my chamber door; -\n',...
'This it is, and nothing more,"\n',...
'\n',...
'Presently my soul grew stronger; hesitating then no longer,\n',...
'`Sir," said I, `or Madam, truly your forgiveness I implore;\n',...
'But the fact is I was napping, and so gently you came rapping,\n',...
'And so faintly you came tapping, tapping at my chamber door,\n',...
'That I scarce was sure I heard you" - here I opened wide the door; -\n',...
'Darkness there, and nothing more.\n',...
'\n',...
'Deep into that darkness peering, long I stood there wondering, fearing,\n',...
'Doubting, dreaming dreams no mortal ever dared to dream before\n',...
'But the silence was unbroken, and the darkness gave no token,\n',...
'And the only word there spoken was the whispered word, `Lenore!"\n',...
'This I whispered, and an echo murmured back the word, `Lenore!"\n',...
'Merely this and nothing more.\n',...
'\n',...
'Back into the chamber turning, all my soul within me burning,\n',...
'Soon again I heard a tapping somewhat louder than before.\n',...
'`Surely," said I, `surely that is something at my window lattice;\n',...
'Let me see then, what thereat is, and this mystery explore -\n',...
'Let my heart be still a moment and this mystery explore; -\n',...
'"Tis the wind and nothing more!"\n',...
'\n',...
'Open here I flung the shutter, when, with many a flirt and flutter,\n',...
'In there stepped a stately raven of the saintly days of yore.\n',...
'Not the least obeisance made he; not a minute stopped or stayed he;\n',...
'But, with mien of lord or lady, perched above my chamber door -\n',...
'Perched upon a bust of Pallas just above my chamber door -\n',...
'Perched, and sat, and nothing more.\n',...
'\n',...
'Then this ebony bird beguiling my sad fancy into smiling,\n',...
'By the grave and stern decorum of the countenance it wore,\n',...
'`Though thy crest be shorn and shaven, thou," I said, `art sure no craven.\n',...
'Ghastly grim and ancient raven wandering from the nightly shore -\n',...
'Tell me what thy lordly name is on the Night"s Plutonian shore!"\n',...
'Quoth the raven, `Nevermore."\n',...
'\n',...
'Much I marvelled this ungainly fowl to hear discourse so plainly,\n',...
'Though its answer little meaning - little relevancy bore;\n',...
'For we cannot help agreeing that no living human being\n',...
'Ever yet was blessed with seeing bird above his chamber door -\n',...
'Bird or beast above the sculptured bust above his chamber door,\n',...
'With such name as `Nevermore."\n',...
'\n',...
'But the raven, sitting lonely on the placid bust, spoke only,\n',...
'That one word, as if his soul in that one word he did outpour.\n',...
'Nothing further then he uttered - not a feather then he fluttered -\n',...
'Till I scarcely more than muttered `Other friends have flown before -\n',...
'On the morrow he will leave me, as my hopes have flown before."\n',...
'Then the bird said, `Nevermore."\n',...
'\n'];
s1_3=['Startled at the stillness broken by reply so aptly spoken,\n',...
'`Doubtless," said I, `what it utters is its only stock and store,\n',...
'Caught from some unhappy master whom unmerciful disaster\n',...
'Followed fast and followed faster till his songs one burden bore -\n',...
'Till the dirges of his hope that melancholy burden bore\n',...
'Of "Never-nevermore.""\n',...
'\n',...
'But the raven still beguiling all my sad soul into smiling,\n',...
'Straight I wheeled a cushioned seat in front of bird and bust and door;\n',...
'Then, upon the velvet sinking, I betook myself to linking\n',...
'Fancy unto fancy, thinking what this ominous bird of yore -\n',...
'What this grim, ungainly, ghastly, gaunt, and ominous bird of yore\n',...
'Meant in croaking `Nevermore."\n',...
'\n',...
'This I sat engaged in guessing, but no syllable expressing\n',...
'To the fowl whose fiery eyes now burned into my bosom"s core;\n',...
'This and more I sat divining, with my head at ease reclining\n',...
'On the cushion"s velvet lining that the lamp-light gloated o"er,\n',...
'But whose velvet violet lining with the lamp-light gloating o"er,\n',...
'She shall press, ah, nevermore!\n',...
'\n',...
'Then, methought, the air grew denser, perfumed from an unseen censer\n',...
'Swung by Seraphim whose foot-falls tinkled on the tufted floor.\n',...
'`Wretch," I cried, `thy God hath lent thee - by these angels he has sent thee\n',...
'Respite - respite and nepenthe from thy memories of Lenore!\n',...
'Quaff, oh quaff this kind nepenthe, and forget this lost Lenore!"\n',...
'Quoth the raven, `Nevermore."\n',...
'\n',...
'`Prophet!" said I, `thing of evil! - prophet still, if bird or devil! -\n',...
'Whether tempter sent, or whether tempest tossed thee here ashore,\n',...
'Desolate yet all undaunted, on this desert land enchanted -\n',...
'On this home by horror haunted - tell me truly, I implore -\n',...
'Is there - is there balm in Gilead? - tell me - tell me, I implore!"\n',...
'Quoth the raven, `Nevermore."\n',...
'\n',...
'`Prophet!" said I, `thing of evil! - prophet still, if bird or devil!\n',...
'By that Heaven that bends above us - by that God we both adore -\n',...
'Tell this soul with sorrow laden if, within the distant Aidenn,\n',...
'It shall clasp a sainted maiden whom the angels named Lenore -\n',...
'Clasp a rare and radiant maiden, whom the angels named Lenore?"\n',...
'Quoth the raven, `Nevermore."\n',...
'\n',...
'`Be that word our sign of parting, bird or fiend!" I shrieked upstarting -\n',...
'`Get thee back into the tempest and the Night"s Plutonian shore!\n',...
'Leave no black plume as a token of that lie thy soul hath spoken!\n',...
'Leave my loneliness unbroken! - quit the bust above my door!\n',...
'Take thy beak from out my heart, and take thy form from off my door!"\n',...
'Quoth the raven, `Nevermore."\n',...
'\n',...
'And the raven, never flitting, still is sitting, still is sitting\n',...
'On the pallid bust of Pallas just above my chamber door;\n',...
'And his eyes have all the seeming of a demon"s that is dreaming,\n',...
'And the lamp-light o"er him streaming throws his shadow on the floor;\n',...
'And my soul from out that shadow that lies floating on the floor\n',...
'Shall be lifted - nevermore!\n'];
s2_1=['"The Raven" is a narrative poem by the American writer Edgar Allan Poe, first\n'...
'published in January 1845. It is noted for its musicality, stylized language,\n'...
'and supernatural atmosphere. It tells of a talking raven"s mysterious visit to\n'...
'a distraught lover, tracing the latter"s slow descent into madness. The lover,\n'...
'often identified as being a student,[1][2] is lamenting the loss of his love,\n'...
'Lenore. The raven, sitting on a bust of Pallas, seems to further instigate his\n'...
'distress with its constant repetition of the word, "Nevermore." Throughout the\n'...
'poem, Poe makes allusions to folklore and various classical works.\n'...
'\n'...
'Poe claimed to have written the poem very logically and methodically. His intention\n'...
'was to create a poem that would appeal to both critical and popular tastes, as\n'...
'he explains in the follow-up essay: "The Philosophy of Composition". The poem\n'...
'was inspired in part by a talking raven in the novel Barnaby Rudge: A Tale of\n'...
'the Riots of "Eighty by Charles Dickens.Poe borrows the complex rhythm and\n'...
'meter of Elizabeth Barrett"s poem "Lady Geraldine"s Courtship".\n'...
'\n'];
s2_2=['The first publication of "The Raven" on January 29, 1845, in the New York Evening\n'...
'Mirror made Poe widely popular in his lifetime. The poem was soon reprinted,\n'...
'parodied, and illustrated. Though some critics disagree about the value of the\n'...
'poem, it remains one of the most famous poems ever written.\n'...
'\n'...
'\n'...
'The Raven\n'...
'\n'...
'Once upon a midnight dreary, while I pondered, weak and weary,\n'...
'Over many a quaint and curious volume of forgotten lore,\n'...
'While I nodded, nearly napping, suddenly there came a tapping,\n'...
'As of some one gently rapping, rapping at my chamber door.\n'...
'""Tis some visitor," I muttered, "tapping at my chamber door �\n'...
'            Only this, and nothing more."\n'...
'\n',...
'Ah, distinctly I remember it was in the bleak December,\n'...
'And each separate dying ember wrought its ghost upon the floor.\n'...
'Eagerly I wished the morrow; � vainly I had sought to borrow\n'...
'From my books surcease of sorrow � sorrow for the lost Lenore �\n'...
'For the rare and radiant maiden whom the angels name Lenore �\n'...
'            Nameless here for evermore.\n'...
'\n'...
'And the silken sad uncertain rustling of each purple curtain\n'...
'Thrilled me � filled me with fantastic terrors never felt before;\n'...
'So that now, to still the beating of my heart, I stood repeating,\n'...
'""Tis some visitor entreating entrance at my chamber door �\n'...
'Some late visitor entreating entrance at my chamber door; �\n'...
'            This it is, and nothing more."\n'...
'\n'...
'Presently my soul grew stronger; hesitating then no longer,\n'...
'"Sir," said I, "or Madam, truly your forgiveness I implore;\n'...
'But the fact is I was napping, and so gently you came rapping,\n'...
'And so faintly you came tapping, tapping at my chamber door,\n'...
'That I scarce was sure I heard you"� here I opened wide the door; �\n'...
'            Darkness there, and nothing more.\n'...
'...\n'...
'\n'...
'\n'...
'"The Raven" follows an unnamed narrator who sits reading "forgotten lore"\n'...
'as a method to forget the loss of his love, Lenore. A "rapping at chamber\n'...
'door" reveals nothing, but excites his soul to "burning". A similar rapping,\n'...
'slightly louder, is heard at his window. When he goes to investigate, a raven\n'...
'steps into his chamber. Paying no attention to the man, the raven perches on a\n'...
'bust of Pallas.\n'...
'\n'...
'Amused by the raven"s comically serious disposition, the man demands that the\n'...
'bird tell him its name. The raven"s only answer is "Nevermore." The narrator\n'...
'is surprised that the raven can talk, though it will not say anything further.\n'...
'He reasons that the bird learned the word "Nevermore" from some "unhappy master"\n'...
'and that it is the only word it knows. The narrator remarks that his "friend"\n'...
'the raven will soon fly out of his life, just as "other friends have flown\n'...
'before" along with his previous hopes. As if answering, the raven responds\n'...
'again with "Nevermore". The narrator is convinced that this single word,\n'...
'possibly learned from a previous owner with bad luck, is all that the bird can\n'...
'say.\n'];
s2_3=['\n'...
'Even so, the narrator pulls his chair directly in front of the raven, determined\n'...
'to learn more about it. He thinks for a moment, not saying anything, but his mind\n'...
'wanders back to his lost Lenore. He thinks the air grows denser and feels the\n'...
'presence of angels. Confused by the association of the angels with the bird, the\n'...
'narrator becomes angry, calling the raven a "thing of evil" and a "prophet". As\n'...
'he yells at the raven it only responds, "Nevermore." Finally, he asks the raven\n'...
'if he will be reunited with Lenore in heaven. When the raven responds with its\n'...
'typical "Nevermore", he shrieks and commands the raven to return to the "Plutonian\n'...
'shore", though it never moves. Presumably at the time of the poem"s recitation\n'...
'by the narrator, the raven "still is sitting" on the bust of Pallas. The\n'...
'narrator"s final admission is that his soul is trapped beneath the raven"s shadow\n'...
'and shall be lifted "Nevermore".\n'...
'\n'...
'\n'...
'Analysis\n'...
'\n'...
'Poe wrote the poem as a narrative, without intentionally creating an allegory\n'...
'or falling into didacticism. The main theme of the poem is one of undying\n'...
'devotion. The narrator experiences a perverse conflict between desire to\n'...
'forget and desire to remember. He seems to get some pleasure from focusing\n'...
'on loss. The narrator assumes that the word "Nevermore" is the raven"s\n'...
'"only stock and store", and yet he continues to ask it questions, knowing\n'...
'what the answer will be. His questions, then, are purposely self-deprecating\n'...
'and further incite his feelings of loss. Poe leaves it unclear if the raven\n'...
'actually knows what it is saying or if it really intends to cause a reaction\n'...
'in the poem"s narrator. The narrator begins as weak and weary, becomes\n'...
'regretful and grief-stricken, before passing into a frenzy and, finally,\n'...
'madness.\n'...
'The raven perches on a bust of Pallas, a symbol of wisdom meant to imply the\n'...
'narrator is a scholar.\n'...
'The raven perches on a bust of Pallas, a symbol of wisdom meant to imply the narrator is a scholar.\n'...
'\n'];

% define a bunch of strings with their associated execution approximate times (in scales)
% s1{1}=[s1_1,s1_2,s1_3];
% s2{1}=[s2_1,s2_2,s2_3];
% t{1}=75;
% s1{2}=[s1_2];
% s2{2}=[s2_2];
% t{2}=15;
% s1{3}=[s1_1,s1_2,s1_3];
% s2{3}=[s2_1];
% t{3}=13;
% s1{4}=[s1_1,s1_1,s1_1];
% s2{4}=[s1_1,s2_3];
% t{4}=10;
% s1{5}=[s1_1];
% s2{5}=[s2_1,s2_2,s2_3];
% t{5}=8;
% s1{6}=[s1_1,s1_2];
% s2{6}=[s2_1];
% t{6}=7;
% s1{7}=[s1_2];
% s2{7}=[s2_1];
% t{7}=6;
% s1{8}=[s1_1];
% s2{8}=[s2_2];
% t{8}=4;
% s1{9}=[s1_1];
% s2{9}=[s2_1];
% t{9}=2;

% using array for t
t=zeros(1,9);
t(1)=75;
t(2)=15;
t(3)=13;
t(4)=10;
t(5)=8;
t(6)=7;
t(7)=6;
t(8)=4;
t(9)=2;

%t1=clock;

while (scale>0)
  use=9;  % find the current string to used based on 'scales' left
  for i=numel(t):-1:1
     if (t(i)<=scale)
         use=i;
     end
  end
 % S1=s1{use}; % get the string and find distance  
 % S2=s2{use};
  switch (use)
  case 1
	d=editdist([s1_1,s1_2,s1_3], [s2_1,s2_2,s2_3]);
  case 2
	d=editdist([s1_2],[s2_2]);
  case 3
	d=editdist([s1_1,s1_2,s1_3],[s2_1]);
  case 4
	d=editdist([s1_1,s1_1,s1_1], [s1_1,s2_3]);
  case 5
	d=editdist([s1_1], [s2_1,s2_2,s2_3]);
  case 6
	d=editdist([s1_1,s1_2], [s2_1]);
  case 7
	d=editdist([s1_2], [s2_1]);
  case 8
	d=editdist([s1_1], [s2_2]);
  case 9
	d=editdist([s1_1], [s2_1]);
  end
  scale=scale-t(use);
  % d=editdist(S1, S2);
end
%t2=clock;

% Compute the running time in seconds
%time=(t2-t1)*[0 0 86400 3600 60 1]';

% Store the benchmark output
%output=[mean(d(:))];

% No validation performed
%valid='N/A';

