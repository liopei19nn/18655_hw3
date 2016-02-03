ReadMe for 18655 Lab3 
Name : Li Pei
ID : lip

This is a complicated project, because there are many ways to build service. At first, 
please de-compress "lip_18655_homework3.zip", "lip_18655_homework3_stub.zip" and "lip_18655_homework3_bonus.zip" and load them into Eclipse. 

Notice that for the bonus project, please build path to the JDBC driver. The driver in bonus project is "WebContent/WEB-INF/lib/mysql-connector-java-5.1.36-bin.jar". Then you have to rebuild the database use "publication.sql"


Below I will describe my work according to Grading criteria.


[10] 3.1 You will use an XML file to store the list of attributes of a class for Author:
		
		The xml file is "input.xml". Please open and check it.

[30] 3.2 Write an XSLT template to automatically generate the following snippet for every attribute:

		The XSLT template is "style.xsl". Please check it. 


[10] 3.3 Write a main file Transform.java:

		Please open the Local Translate folder, there is a Transform.java file for you to check. I have compile it into Transform.class, and put "input.xml" and "style.xsl" there. If you want to get "output.xml", please use terminal to and input "java Transform style.xsl input.xml output.xml" and you can see the generated "output.xml" in folder.

[7] 3.4 Develop a Web Service Endpoint Interface :
		
		The interface is in the "lip_18655_homework3" project, in the package named "com.lip.ws" and the interface name is "XMLTransform.java"

[7] 3.5 Develop a Web Service Endpoint Implementation:
		
		The implementation is in the "lip_18655_homework3" project, in the package named "com.lip.ws" and the name is "XMLTransformImpl.java"

[7] 3.6 Develop an Endpoint Publisher:
		
		The implementation is in the "lip_18655_homework3" project, in the package named "com.lip.endpoint" and the name is "XMLTransformPublisher.java"

[7] 3.7 Test it and show screen shot:

		To test it as Web Service in browser, you have to put "input.xml" and "style.xsl" in Mac OS directory "Applications/Eclipse.app/Contents/MacOS". Then you can access the Web Service in XMLTransformImpl.wsdl.

		To test it as a publisher and use client in RPC-Style, you must run the "XMLTransformPublisher.java" first as publisher, and run "XMLTransformClient.java" as Java application to see the result in Eclipse console terminal.

[7] 3.8 Develop Java Web Service Client (without tool);

		The client is at "com.lip.client" in project "lip_18655_homework3". Before run it, please run the XMLTransformerPublisher as described in 3.7.

[7] 3.9 Develop Java Web Service Client via wsimport tool
	
		To check this part, you have to open "lip_18655_homework3_stub" project and check the code.

		This project is built by inputing "wsimport -keep http://localhost:9999/ws/xmltransformImpl?wsdl" in terminal and deploy it according to package in Eclipse. 

		To run the client in it, you have to run the "XMLTransformPublisher.java" in project "lip_18655_homework3" first. And then you could run the client in "lip_18655_homework3_stub" and see results in Eclipse console terminal.
		


[8] 3.10 Zip your code using naming convention, write a readme.txt file to tell TA how to run your code.

		You are reading the readme file right now.


Bonus!
[15] Publish the Publication Query service of Lab2.

		Please open the "lip_18655_homework3_bonus" part and load it in Eclipse. 

		Notice that for the bonus project, please build path to the JDBC driver. The driver in bonus project is "WebContent/WEB-INF/lib/mysql-connector-java-5.1.36-bin.jar". Then you have to rebuild the database use "publication.sql"

		The end point interface is "PubSearch.java" and implementation is "PubSearchImpl.java". 

		The publisher is "PubSearchPublisher.java".

		If you want to run the service in browser, you could access "PubSearchImpl.wsdl" or new a web service use "PubSearchImpl.java".

		If you want to check the published service, please run the "PubSearchPublisher.java" first and run "PubSearchClient.java" in client package. You could see the query result output in Eclipse console terminal.






