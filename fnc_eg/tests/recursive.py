from behave import given, then, when

@given "number {num}"
def factorial(context, num):
    if num <= 1:
        return 1
    else:
        return factorial(num - 1) * num

print(factorial(num))