import sys 
error_ends={
        "libgfortran-ng=7.3.0": "libgfortran-ng=9.3.0",
        "cudatoolkit=11.0.221": "cudatoolkit=11.0.2",
        "libstdcxx-ng=9.1.0": "libstdcxx-ng=9.3.0",
        "libgcc-ng=9.1.0":"libgcc-ng=9.3.0",
        "libxcb=1.14":"libxcb=1.14-2"
        }
print (sys.argv)

with open("environment.yml.back", "r") as rf, open("environment.yml", "w") as wf:
    for line in rf.readlines():
        line_split = line.split("=")
        if len(line_split) == 3:
            if line_split[1] == "":
                line = "{}=={}".format(line_split[0],line_split[2]) 
            else:
                line = "=".join(line_split[0:2]) + "\n"
        if sys.argv[1]=="linux":
            for key,value in error_ends.items():
                if line.endswith(key+"\n"):
                    print ("old:{}".format(line))
                    line = line.replace(key,value)
                    print ("new:{}".format(line))
        wf.write(line)


