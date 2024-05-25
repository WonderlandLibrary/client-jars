import os

template = open("README.template", "r").read()

output = template

jars_out = ""
available_out = ""
for jar_name in os.listdir("jars"):
    jars_out += f"- {jar_name}\n"
    available_out += f"{jar_name}\n"

output = output.replace("jars-here", jars_out)    

f = open("README.md", "w")
f.write(output)
f.close()

available = open("available", "w")
available.write(available_out)
available.close()
