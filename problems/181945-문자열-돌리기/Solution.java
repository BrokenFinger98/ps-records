import java.util.*;
import java.io.*;
import java.lang.*;

public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String s = br.readLine();
        for(int i = 0; i < s.length(); ++i){
            System.out.println(s.charAt(i));
        }
        br.close();
    }
}
