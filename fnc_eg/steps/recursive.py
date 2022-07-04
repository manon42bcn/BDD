from behave import given, then, when
from test_recursive import factorial

@when ("number {number}")
def test_recursive(context, number):
    rst = factorial(int(number))
    context.result = rst

@then("get {result} as result")
def test_result(context, result):
    assert int(result) == int(context.result), "FAILURE, result {} instead {}".format(context.result, result)
