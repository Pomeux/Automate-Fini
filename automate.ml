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
  | 1->[(1,"a");(2,"a")]
  | 2->[(2,"b")]
  | 3->[] 
  |_-> [];;
    
let ex1={alphabet=["a";"b";"c"];etat=[1;2;3];initiaux=[1];final=[3];transition=transitionA}

let less_first_character=fun s n->String.sub s 1 (n-1);; 

let get_first_character=fun s->if s="" then "" else String.make 1 (String.get s 0);; (*cela sert-il à quelque chose de vérifié si c'est un ""*)

let rec aa=fun liste mot first_character n->
  match liste with 
  | (a,"")::q->(aa q mot first_character n)
  | (a,b)::q->if b=first_character then (a,(less_first_character mot  n))::(aa q mot first_character n) else (aa q mot first_character n)
  | _->[];;
(*marche pour les e transitions*)


(*
  Fonction qui prend en argument la transition, le motle premier caractère retourne une liste sous la forme de [(etat,mot)] et la longueur du mot
    mot et first_character chaine de caractère  *)

let rec bb=fun automate liste->
  match liste with 
  | (a,b)::q->(aa (automate.transition a) b (get_first_character b ) (String.length b))   @(bb automate q)
  | _->[];;

let rec verifEtatFin=fun liste etat->
  match liste with 
  | []->false
  | h::q when (etat=h)->true
  | h::q->(verifEtatFin q etat);;

let rec verifFin=fun liste etat mot-> (verifEtatFin liste etat ) && mot="";;

let rec dd=fun listeDebut mot->
  match listeDebut with
  | []->[]
  | h::q->(h,mot)::(dd q mot);;



(*
  let rec cc=fun automate mot->
    if (verifEtatFin automate.final mot) then 
    
    else *)

     
     
(*module*)

(*Fonction qui verifie si un mot est compris dans le langage*)

(*Fonction qui retourne l'ensemble *)

(*Fonction qui enleve les e transitions *)

(*Fonction qui traduit un automate non deterministe*)

(*Fonction qui minimise*)

(*Fonction qui  retourne le langage *)

(*Fonction qui retourne une expression rationnelle*)

(*Fonction qui retourne une grammaire de chomsky*)
