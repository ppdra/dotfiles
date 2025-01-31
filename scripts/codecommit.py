import re
import subprocess
import os

def run_alias_and_extract(alias_command):
    command = f"zsh -i -c '{alias_command}'"
    result = subprocess.run(command, shell=True, text=True, capture_output=True)

    if result.returncode == 0:
        output = result.stdout
        matches = re.search(r"```(.*?)```", output, re.DOTALL).group(1)
        return matches 
    else:
        print("Erro ao executar o comando:")
        print(result.stderr)
        return None

comment = run_alias_and_extract("gccs")

print(comment)

print("-------------------------------------")
resposta = input("Commit? (y/n): ")
if resposta.lower() == "y":
    os.system("git add .")
    os.system("git commit -m {comment}")
    os.system("git push")
else:
    print("Commit cancelado.")
