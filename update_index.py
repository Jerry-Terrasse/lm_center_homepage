import os
import glob
import re

PATTERN_LIST = [
    (re.compile(r"/en/\""), "/en/index.html\""),
    (re.compile(r"/research/\""), "/research/index.html\""),
    (re.compile(r"/post/\""), "/post/index.html\""),
    (re.compile(r"/publication/\""), "/publication/index.html\""),

    (re.compile(r"/research/(.+?)/\""), "/research/\\1/index.html\""),
    (re.compile(r"/post/(.+?)/\""), "/post/\\1/index.html\""),
]

def process_html_files(root_dir):
    for filepath in glob.glob(os.path.join(root_dir, '**/*.html'), recursive=True):
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        new_content = content
        for pattern, replacement in PATTERN_LIST:
            new_content = pattern.sub(replacement, new_content)
        if new_content != content:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f"Updated: {filepath}")

def main():
    public_dir = os.path.join(os.getcwd(), 'public')
    if os.path.isdir(public_dir):
        process_html_files(public_dir)
    else:
        print("public directory not found")

if __name__ == "__main__":
    main()

