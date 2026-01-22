Hybrid Calculator – SDLC Documentation

Project Name: Hybrid Calculator – Basic Operations & Quadratic Solver


---

1. Planning Phase Objective: Define the need, feasibility, and scope.



Problem Statement: Users need a calculator for both everyday arithmetic and solving quadratic equations. A single hybrid tool would save time and provide convenience.

Feasibility Study:

Technical: Can be implemented in the existing programming environment.

Operational: Console-based interface; simple to use.

Economic: Minimal cost; uses existing hardware and software.


Project Scope:

Perform basic arithmetic operations (+, −, ×, ÷)

Solve quadratic equations

Handle invalid inputs gracefully


Deliverables: Fully functional hybrid calculator, documented source code, GitHub repository.



---

2. Requirement Analysis Objective: Define software requirements.



Functional Requirements:

1. Accept numeric inputs for basic operations.


2. Perform addition, subtraction, multiplication, and division.


3. Accept coefficients (a, b, c) for quadratic equations.


4. Compute discriminant (D = b^2 - 4ac).


5. Calculate roots (real or complex).


6. Clear input and results.



Non-Functional Requirements:

Fast computation

User-friendly console interface

Minimal memory usage


System Requirements:

IDE: VS Code or similar

Programming language runtime: whatever you used for your calculator




---

3. System Design Objective: Design the software workflow.



Data Flow Diagram (DFD): User Inputs |----> Select Operation (Basic / Quadratic) |            | |            v |       Quadratic Inputs (a,b,c) |            | |            v |       Compute Discriminant |            | |            v |       Determine Root Type |            | |            v |       Display Roots | |----> Basic Operation Inputs (x, y) | v Perform Operation | v Display Result

Pseudo Code: START DISPLAY "Choose operation: 1.Basic 2.Quadratic" READ choice IF choice == 1 THEN READ number1, number2 READ operator (+,-,,/) PERFORM operation DISPLAY result ELSE IF choice == 2 THEN READ a, b, c IF a == 0 THEN PRINT "Not a quadratic equation" ELSE D = b^2 - 4ac IF D > 0 THEN root1 = (-b + sqrt(D))/(2a) root2 = (-b - sqrt(D))/(2a) ELSE IF D == 0 THEN root = -b/(2a) ELSE real = -b/(2a) imag = sqrt(-D)/(2a) DISPLAY complex roots ENDIF DISPLAY roots ENDIF ENDIF END



---

4. Implementation Objective: Convert design into working code.



Implementation Notes:

Console-based interface

Input validation for division by zero and non-numeric inputs

Output formatting for real and complex roots


Class / Function Names:

HybridCalculator

basic_operation

quadratic_solver




---

5. Testing Objective: Ensure the software meets requirements.



Unit Testing: Test each operation individually (addition, subtraction, multiplication, division, quadratic roots for D>0, D=0, D<0)

Integration Testing: Test full workflow with multiple operations in sequence.

Edge Cases: Division by zero, non-numeric input, a = 0 for quadratic.



---

6. Deployment Objective: Make the software available.



Push project to GitHub with folder structure: hybrid-calculator/ ├── src/ (calculator code) ├── SDLC.docx (this document) ├── README.md (project overview, how to run)



---

7. Maintenance Objective: Handle updates, bug fixes, and enhancements.



Future enhancements: GUI interface, memory storage for calculations, optimization for mobile/web deployment.