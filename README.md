# Connection Leak Demonstration
# Steps I made to reproduce issue
- Used a Macbook and ran Api in Rider on Port 5010
- Run app via vscode on iPad Simulator
- Run lsof | grep Runner | wc -l to see the amount of entries increasing
- Run lsof | grep Runner to see localhost:58997->localhost:telelpathstart (ESTABLISHED) leaking

