package org.springframework.samples.petclinic.sample;

public class FakeService {
    public String sayHello() {
        Helper.log("Hello Spring!"); return "Hello Spring!";
    }
}
