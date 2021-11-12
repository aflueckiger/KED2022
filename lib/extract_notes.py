import sys

n_chapter = 0
n_slide = 0
notes = False


for line in sys.stdin:
    headline = line.startswith("## ") or line.startswith("# ")

    if line.startswith("# "):
        n_chapter += 1
    if line.startswith("## "):
        n_slide += 1

    if line.startswith("::: notes"):
        notes = True
        continue
    elif notes and line.startswith(":::"):
        notes = False

    if headline:
        print("<br>")
        print(f'**{n_chapter}.{n_slide}{line.replace("#","").rstrip()}**')
    elif notes:
        print(line)
