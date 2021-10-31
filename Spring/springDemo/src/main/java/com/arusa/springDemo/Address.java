package com.arusa.springDemo;

public class Address {
		// TODO Auto-generated method stub
		int zipcode;
		String city;
		String state;
		
		public Address(){
			
		}
		public Address(int zipcode, String city, String state) {
			this.zipcode = zipcode;
			this.city = city;
			this.state = state;
		}
		public int getZipcode() {
			return zipcode;
		}
		public void setZipcode(int zipcode) {
			this.zipcode = zipcode;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		@Override
		public String toString() {
			return "Address [zipcode=" + zipcode + ", city=" + city + ", state=" + state + "]";
		}
		

}
