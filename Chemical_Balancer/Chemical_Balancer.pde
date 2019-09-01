// Chemical Equation Balancer

String input = "OH+H=H402";

String data1 = "HeLiBeNeNaMgAlSiClArCaScTiCrMnFeCoNiCuZnGaGeAsSeBrKrRbSrZrNbMoTcRuRhPdAgCdInSnSbTeXeCsBaLaCePrNdPmSmEuGdTbDyHoErTmYbLuHfTaReOsIrPtAuHgTlPbBiPoAtRnFrRaAcThPaNpPuAmCmBkCfEsFmMdNoLrRfDbSgBhHsMtDsRgCnNhFlMcLvTsOg";
String data2 = "HBCNOFPSKVYIWU";

void setup() {
  print(chemBal(input));
}



String chemBal(String in) {
  String ret = "";
  ArrayList<String> tokens = new ArrayList<String>(0);
  ArrayList<String> elements = new ArrayList<String>(0);
  
  // Used for the Reduced Row Echelon Form calculation input
  ArrayList<double[]> rrefin = new ArrayList<double[]>(0);
  
  
  // Tokenizer
  while(in.indexOf("+") > 0 || in.indexOf("=") > 0) {
    if((in.indexOf("=") < in.indexOf("+") && in.indexOf("=") > 0) || in.indexOf("+") < 0) {
      tokens.add(in.substring(0, in.indexOf("=")));
      tokens.add("=");
      in = in.substring(in.indexOf("=") + 1);
    } else {
      tokens.add(in.substring(0, in.indexOf("+")));
      in = in.substring(in.indexOf("+") + 1);
    }
  }
  
  // Make sure to add the last part of String
  tokens.add(in);
  print(tokens);
  
  // Tokenizer 2: Electric Boolagoo
  // Seperate the elements, identify them, and then record their coefficients
  
  
  
  // Correctly set up array for RREF input
  // Check for parenthesis
  for(int i = 0; i < tokens.size(); i++) {
    while(tokens.get(i).indexOf(")") >= 0) {
      elements.add(tokens.get(i).substring(tokens.get(i).indexOf("("), tokens.get(i).indexOf(")") + 1));
      for(int j = 0; j < tokens.size(); j++) {
        
      }
    }
  }
  
  
  
  return ret;
}
