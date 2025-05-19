build:
	@javac -d out com/craftinginterpreters/lox/*.java
	@javac -d out com/craftinginterpreters/tools/*.java
run:
	@java -cp out com.craftinginterpreters.lox.Lox
genast:
	java -cp out com.craftinginterpreters.tools.GenerateAst ./com/craftinginterpreters/lox