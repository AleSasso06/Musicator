package it.generationitaly.musicator.controller;

	import java.util.Objects;

	class Person {
	    private String name;
	    private int age;

	    public Person(String name, int age) {
	        this.name = name;
	        this.age = age;
	    }

	    @Override
	    public boolean equals(Object o) {
	        if (this == o) return true; // Self-comparison
	        if (o == null || getClass() != o.getClass()) return false; // Null or class mismatch

	        Person person = (Person) o; // Cast object to Person

	        // Compare relevant fields
	        return age == person.age && Objects.equals(name, person.name);
	    }

	    @Override
	    public int hashCode() {
	        // Combine fields to generate hash code
	        return Objects.hash(name, age);
	    }

	    @Override
	    public String toString() {
	        return name + ", " + age;
	    }
	}

