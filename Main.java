import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
      int h = 3;
      int space = h /2;
      int space2 = space * 2;
      int stars = h - space2;

      for(int a = 0; a < h; a++){
        if(a > (h/2)){
          space ++;
          space2 = space * 2;
          stars = h - space2;
          for(int b = 0; b < space; b++){
            System.out.print(" ");
          }
          for(int b = 0; b < stars; b++){
            System.out.print("*");
          }
          for(int b = 0; b < space2; b++){
            System.out.print(" ");
          }
          System.out.println("");
        }
        else{
          // System.out.print(space);
          for(int b = 0; b < space; b++){
            System.out.print(" ");
          }
          for(int b = 0; b < stars; b++){
            System.out.print("*");
          }
          for(int b = 0; b < space2; b++){
            System.out.print(" ");
          }
          if(space != 0){
            space --;
            space2 = space * 2;
            stars = h - space2;
            System.out.println("");
          }
          else{
            space = 0;
            System.out.println("");

          }
        }
      }
    }
}