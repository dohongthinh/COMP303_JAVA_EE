package assignment_1;

public class YogaBean {
	//declaration of properties
			private String name;
			private String email;
			private String contactNumber;
			private int age;
			private String city;
			private String gender;
			private String batch;
			private String[] yogaType;
			
			//get and set
			public void setName(String name)
			{
				this.name=name;			
			}
			public String getName()
			{
				return name;
			}
			public void setEmail(String email)
			{
				this.email=email;			
			}
			public String getEmail()
			{
				return email;
			}
			public void setContactNumber(String contactNumber)
			{
				this.contactNumber=contactNumber;			
			}
			public String getContactNumber()
			{
				return contactNumber;
			}
			public void setAge(int age)
			{
				this.age=age;			
			}
			public int getAge()
			{
				return age;
			}
			public void setCity(String city)
			{
				this.city=city;		
			}
			public String getCity()
			{
				return city;
			}
			public void setGender(String gender)
			{
				this.gender=gender;		
			}
			public String getGender()
			{
				return gender;
			}
			public void setBatch(String batch)
			{
				this.batch=batch;		
			}
			public String getBatch()
			{
				return batch;
			}
			public void setYogaType(String []yogaType)
			{
				this.yogaType=yogaType;		
			}
			public String[] getYogaType()
			{
				return yogaType;
			}
}
