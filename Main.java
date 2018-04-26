import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        // String in = System.console().readLine();
        // int h = String.toInteger(in);
        int h = 6;
        int space = h /2;
        int space2 = space * 2;
        int stars = h - space2;

        if(h%2 == 1){
            for(int a = 0; a < h; a++){
                // System.out.print(a);
                if(a > (h/2)){
                    space ++;
                    space2 = space * 2;
                    stars = h - space2;

                    // System.out.print("Greater Stars: " + stars);
                    // System.out.print("Greater Space: " + space);
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
                    // System.out.print("Stars: " + stars);
                    // System.out.print("Space: " + space);
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
        else{
            int hLess = h-1;
            space = h/2 - 1;
            space2 = space * 2;
            stars = hLess - space2;
            for(int a = 0; a < h; a++){
                if(a == (hLess/2 + 1)){
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
                else if(a > hLess/2 + 1){
                    space ++;
                    space2 = space * 2;
                    stars = hLess - space2;
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
                        stars = hLess - space2;
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
}
