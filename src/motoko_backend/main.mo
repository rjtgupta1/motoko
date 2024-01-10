import Debug "mo:base/Debug";
actor motoko{
  var value = 12;
  value := 13; // reassigning the value of a variable 
  let num = 5;  // creating a constant
  //! num:=6; It will throw an error : "expected mutable assignment target"

  Debug.print("Hello Motoko");  // printing a text

  //  creating a function with func.
  //* Every function must be closed with semicolon ;

  // func increase(){   // this is a private function.
  //   value += 1;
  //   Debug.print(debug_show(value))
  // };

  // increase();

  public func increase(){   // this is a public function.
    value += 1;
    Debug.print(debug_show(value))
  };

  //* We can call the public funtion after deploying by using below command.
  //! dfx canister call dbank_backend increase

  Debug.print(debug_show(num));  // printing the value of variable

}