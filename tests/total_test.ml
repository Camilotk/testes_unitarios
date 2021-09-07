open Compras

(* Essse arquivo testa a função total *)

(* ARRANGE *)
let e = epsilon_float

module To_test = struct
  let test_positivos = [  
    { id = 1; nome = "Samsung Galaxy s30 Plus"; valor = 36789.98} ;
    { id = 2; nome = "Fone de Ouvido Bluettoth JBL"; valor = 236.99} 
  ];;

  let test_zeros = [
      { id = 1; nome = "Samsung Galaxy s30 Plus"; valor = 0. } ;
      { id = 2; nome = "Fone de Ouvido Bluettoth JBL"; valor = 0. } ;
  ];;

  let capitalize = String.capitalize_ascii
end 

(* ACT *)

let test_positivos () =
  Alcotest.(check  @@ float e) "valores positivos de produto"  37026.97 (total To_test.test_positivos)

let test_zeros () =
  Alcotest.(check  @@ float e) "valor zero de produto"  0. (total To_test.test_zeros)

let test_capitalize () =
    Alcotest.(check string) "same string" "World." (To_test.capitalize "world.")

(* ASSERT *)
let () =
  let open Alcotest in
  run "Utils" [
      "total do carrinho", [
          test_case "valores positivos de produto" `Quick test_positivos;
          test_case "valor zero de produto" `Quick test_zeros;
        ];
    ]