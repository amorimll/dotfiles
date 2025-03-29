import subprocess
import sys
import os

def markdown_para_pdf(arquivo_markdown, arquivo_pdf):
    try: 
        subprocess.run([
            "pandoc", arquivo_markdown, "-o", arquivo_pdf,
            "--pdf-engine=xelatex", "--variable", "geometry:margin=1in",
            "--variable", "mainfont=Fira Code"
        ], check=True)

        print(f"Arquivo PDF gerado com sucesso: {arquivo_pdf}")
    except subprocess.CalledProcessError as e:
        print(f"Erro ao converter Markdown para PDF: {e}")
        sys.exit(1)

if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(description="Converter todos os arquivos Markdown de uma pasta (e subpastas) para PDF usando LaTeX.")
    parser.add_argument("caminho_pasta", help="Caminho da pasta contendo arquivos Markdown")
    args = parser.parse_args()
    
    caminho_absoluto = os.path.abspath(args.caminho_pasta)
    
    if not os.path.isdir(caminho_absoluto):
        print("O caminho especificado não é uma pasta válida.")
        sys.exit(1)
    
    for raiz, _, arquivos in os.walk(caminho_absoluto):
        for arquivo in arquivos:
            if arquivo.endswith(".md"):
                caminho_md = os.path.join(raiz, arquivo)
                caminho_pdf = os.path.join(raiz, os.path.splitext(arquivo)[0] + ".pdf")
                markdown_para_pdf(caminho_md, caminho_pdf)
