


# | Logical Operator | Named | Operation Type | Description
------------ | ------------ | ------------- | ------------- | -------------
1 | `!` | Not | Unary | Inverts the value of the boolean operand that it is attached to.
2 | `&` | And | Binary | `return true` if the operands on both sides of the operator evaluate to `true`. 
3 | `&&` | Conditional And | Binary | `return true` if the operands on both sides of the operator evaluate to `true`. 
4 | `|` | Or | Binary | `return true` if an operand on either side of the operator evaluates to `true`. 
5 | `||` | Conditional Or | Binary | `return true` if an operand on either side of the operator evaluates to `true`. 
6 | `^` | Xor | Binary | ---------

#### Unary and Binary 

Unary operators only require one operand in order to perform an operation. 

Binary operators (sans the assignment operators) read like many natural languages; from left to right. 


## Bitwise and Conditional Operators 

Both the 'And'  (`&`) and 'Or' (`|` ) operators have matching 'Conditional' Operators that on first glance may look more or less Identical: together,  'Conditional-And'  (`&&`) and 'Conditional-Or' (`||` ), respectively, are called **_Conditional Operators_**; the original `&` and `|` operators are known as **_Bitwise Operators_**.

(img)

The `boolean` expressions on either side of a bitwise operator are _both_ evaluated _before_ the bitwise operator is applied to the values.  

Meanwhile when a _conditional operator_ is used on `boolean` expressions the left-hand operand (LHO) of the operator is evaluated _first_: if it evaluates to `true`, the RHO is evaluated and if also `true` the conditional operator  will return `true`. However, if the LHO  evaluates to `false`, evaluation of the RHO is skipped and the operator simply returns `false`. 
You could say that the conditional operators are also the _lazy_ ones: they only evaluate both expressions if the LHO **_first_** evaluates to `true`.

So, which one should you use for evaluating your program's `boolean` expressions?  
Here it would be useful to know that both the _bitwise operators_ and the  _conditional operators_ are respectively also known as _**logical bitwise operators**_ and _**logical conditional operators**_.

The logical operators are specifically meant to operate on and `return boolean` expressions and values alone. They always evaluate their LHO first and lazily evaluate the rest of the expression depending on the value of the LHO.  
The bitwise operators `&` and `|`, on the other hand, are meant to operate on the binary digits of an integral value of any type and `return` an `integer`, not a `boolean`.  

Thus, _**logical operators `&&` and `||` should always be used when dealing with `boolean` expressions**_.


# | Logical Operator | Named | Operation Type | Operator Type | Description
------------ | ------------ | ------------- | ------------- | ------------- | -------------
~~_2_~~ | ~~_`&`_~~ | ~~_And_~~ | ~~_Binary_~~ | ~~_Bitwise Operator_~~ | ~~_`return true` if the operands on both sides of the operator evaluate to `true`._~~
**3** | **`&&`** | **Conditional And** | **Binary** | **Lazy Logical Operator** | **`return true` if the operands on both sides of the operator evaluate to `true`.**
~~_4_~~ | ~~_`|`_~~ | ~~_Or_~~ | ~~_Binary_~~ |~~_Bitwise Operator_~~| ~~_`return true` if an operand on either side of the operator evaluates to `true`._~~
**5** | **`||`** | **Conditional Or** | **Binary** | **Lazy Logical Operator** | **`return true` if an operand on either side of the operator evaluates to `true`.** 


