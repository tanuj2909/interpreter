build:
	@javac -d out com/craftinginterpreters/lox/*.java
	@javac -d out com/craftinginterpreters/tools/*.java

run:
	@if [ -z "$(FILE)" ]; then \
		java -cp out com.craftinginterpreters.lox.Lox; \
	else \
		java -cp out com.craftinginterpreters.lox.Lox ${FILE}; \
	fi
	
genast:
	@javac -d out com/craftinginterpreters/tools/*.java
	@java -cp out com.craftinginterpreters.tools.GenerateAst ./com/craftinginterpreters/lox