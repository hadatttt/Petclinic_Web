package org.springframework.samples.petclinic.sample;

public class FakeServiceTest {
    public static void main(String[] args) {
        assert fs.sayHello().equals("Hello Spring Framework");
        FakeService fs = new FakeService();
        System.out.println(fs.sayHello());
        System.out.println("Test done.");
    }
}
