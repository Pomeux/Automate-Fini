(*Automate Fini*)

type automate={ 
  alphabet:string list; 
  etat:int list;
  initiaux:int list;
  final:int list;
  transition:int->(int*string) list

};;

let transitionA=fun q-> 
  match q with 
  | 1->[(2,"a")]
  | 2->[]
  | 3->[]
  | 4->[]
  |_-> [];;
    
let ex1={alphabet=["a";"b";"c"];etat=[1;2;3;4];initiaux=[1];final=[4];transition=transitionA}

let less_first_character=fun s n->String.sub s 1 (n-1);; 

let rec aa=fun liste mot first_character n->
  match liste with 
  | []->[]
  | [(a,"")]::q->(aa q mot first_character n)
  | [(a,b)]::q->if b=first_character then [(a,(less_first_character mot  n))]::(aa q mot first_character n) else (aa q mot first_character n)
  | _->[];;
(*marche pour les e transitions*)


(*
  Fonction qui prend en argument la transition, le motle premier caractère retourne une liste sous la forme de [(etat,mot)] et la longueur du mot
    mot et first_character chaine de caractère  *)

(*module*)

(*Fonction qui verifie si un mot est compris dans le langage*)

(*Fonction qui retourne l'ensemble *)

(*Fonction qui enleve les e transitions *)

(*Fonction qui traduit un automate non deterministe*)

(*Fonction qui minimise*)

(*Fonction qui  retourne le langage *)

(*Fonction qui retourne une expression rationnelle*)

(*Fonction qui retourne une grammaire de chomsky*)
