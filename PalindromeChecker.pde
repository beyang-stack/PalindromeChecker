public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!",};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String A = "";
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)))
      A = A + word.substring(i,i+1);
  }
  A = A.toLowerCase();
  return(A.equals(reverse(A)));
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = 0; i < str.length(); i++){
      sNew = sNew + str.substring(str.length()-1-i,str.length()-i);
    }
    return sNew;
}

