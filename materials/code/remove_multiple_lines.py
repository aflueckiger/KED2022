#!/usr/bin/env python
# coding: utf-8


# Remove multiple lines in a string using regular expressions

import re

text = """
This is an example Text.

YOUR_PATTERN REMOVE THIS

Keep this and the following.
"""

# remove a multiline string by substituting the match with an empty string
# re.DOtALL make the . matching the newline character \n
text_clean = re.sub("YOUR_PATTERN.*\n\n", "", text, re.DOTALL)

print(text_clean)
