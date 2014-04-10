package com.rbnelite.udyogvishwa.dao;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class Simple {
public static void main(String arg[])
{
	 HashSet al=new HashSet();  
	  al.add("Ravi");  
	  al.add("Vijay");  
	  al.add("Ravi");  
	  al.add("Ajay");  
	  
	  Iterator itr=al.iterator();  
	  while(itr.hasNext()){  
	   System.out.println(itr.next());  
}
}
}
