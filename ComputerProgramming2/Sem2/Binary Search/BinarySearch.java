public class BinarySearch {
    static int doSearch(int[] array, int targetValue){
        int min = 0;
        int max = array.length-1;
        int guess;
        while(max >= min){
            guess = (max+min)/2;
            if(array[guess] == targetValue){
                return guess;
            }else if(array[guess] < targetValue){
                min = guess+1;
            }else{
                max = guess-1;
            }
        }
        return -1;
    }

    public static void main(String[] args){
        int[] primes = {3,5,15,34,45,72,77};
        int result = doSearch(primes, 34);
        System.out.println("Number is at index of " + result);

    }
    
}
