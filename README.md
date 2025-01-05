# viper-solid-swift
PET project to demonstrate SOLID principles using VIPER architecture<br>
First of all I want to say thank you for interesting in my project<br>

## SOLID<br>
**S**-ingle responsibility Principle<br>
**O**-pen/close Principle<br>
**L**-iskov Substitution Principle<br>
**I**-nterface Segregation Principle<br>
**D**-ependency Inversion Principle<br>

## Clean architecture
![clean architecture](https://github.com/Pro2005/viper-solid-swift/blob/main/CleanArchitecture.jpg)<br>
source: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html

## VIPER
**VIEW** - Displays information from the Presenter and sends user interactions back to the Presenter.<br>
**Interactor** - Retrieves Entities and contains the business logic for a particular use case. They are view agnostic and can be consumed by one or many Presenters.<br>
**Presenter** - Handles preparing content for the display and intercepting user interactions.<br>
**Entity** - Simple data model objects.<br>
**Router** - Handles navigation logic for which screens should appear and when.<br>
source: https://medium.com/slalom-build/clean-architecture-for-ios-development-using-the-viper-pattern-fac30f5d29fc
