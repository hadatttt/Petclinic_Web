package org.springframework.samples.petclinic.sample;

public class FakeServiceTest {
    public static void main(String[] args) {
        FakeService fs = new FakeService();
        System.out.println(fs.sayHello());
    }
}
