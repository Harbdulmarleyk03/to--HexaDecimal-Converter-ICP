import Text "mo:base/Text";

actor NatToHex{
  public func Nat2Hex(number : Nat) : async Text {
    let hexChars:[Text]= ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
    var result : Text = "";
    var n = number;

    // Special Case
    if(n==0){
      return "0"
    };

    while (n > 0){
      let remainder= n%16;
      result := hexChars[remainder] #result;
      n := n/16;
    };
    return result;
  };
};
