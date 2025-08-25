package com.prisma77.basic.java;

public class OuterClass {

    private int outerValue;
    public OuterClass() {
        System.out.println("OuterClass()");
    }

    public  class InnerClass {
        private int innerValue;
        public InnerClass() {
            System.out.println("InnerClass()");
            innerValue = 1;
            outerValue = 10;
        }

        public void showInner() {
            showOuter();
        }
    }

    private void showOuter() {
        System.out.println("InnerClass.showOuter()");
    }


    public static void main(String[] args) {
        OuterClass.InnerClass in = new OuterClass().new InnerClass();
        in.showInner();
    }

}
