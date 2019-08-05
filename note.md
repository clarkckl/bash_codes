## Some notes

### Increment a variable
```bash
i=0
((i=i+1))
i=$((i+1))
```

* Use $((...)) syntax for arithmetic in bash.


### Compare integers
```bash
if [ "$a" -eq "$b" ]    # equal to
if [ "$a" -ne "$b" ]    # not equal to
if [ "$a" -gt "$b" ]    # greater than
if [ "$a" -ge "$b" ]    # greater than or equal to
if [ "$a" -lt "$b" ]    # less than
if [ "$a" -le "$b" ]    # less than or equal to
```
or use double parentheses:
```bash
if (("$a" < "$b"))
if (("$a" <= "$b"))
if (("$a" > "$b"))
if (("$a" >= "$b"))
```


### Compare strings

```bash
if [ "$a" = "$b" ]
if [ "$a" != "$b" ]

if [ "$x" = "some_string" ]

# Lexicographic (greater than, less than) comparison
if [ "$a" \< "$b" ]
if [ "$a" \> "$b" ]
```

* Spaces between if and [ and ] are important.
* Be careful that > and < are redirection operators so escape it with \> and \< respectively for strings.
