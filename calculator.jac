# simple jac program
# NAME : DAVID GICHUKI
# EMAIL : givickdach6@gmail.com
# description : simple calculator using jac

walker calculator {
    can run {
        report "Welcome to Jac AI Calculator!";
        report "Enter operation (+, -, *, /):";
        op = input();
        report "Enter first number:";
        a = int(input());
        report "Enter second number:";
        b = int(input());

        if op == "+" {
            result = a + b;
        }
        elif op == "-" {
            result = a - b;
        }
        elif op == "*" {
            result = a * b;
        }
        elif op == "/" {
            if b != 0 {
                result = a / b;
            }
            else {
                report "Error: Division by zero!";
                result = None;
            }
        }
        else {
            report "Invalid operation!";
            result = None;
        }

        if result != None {
            report f"Result: {result}";
        }
    }
}

start {
    spawn walker calculator;
}

