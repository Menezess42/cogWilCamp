{ pkgs, lib, config, inputs, ... }:

{
    packages = [
        pkgs.pyright
    ];

    languages.python = {
        enable = true;
        package = pkgs.python313.withPackages (p: with p; [
            numpy
            pandas
            pytest
            ipykernel
            ipython
            nbformat
            pyqt5

            # NVIM
            pip
            jedi
            jedi-language-server
            black
            flake8
            sentinel
            python-lsp-server
            virtualenv
            pyflakes
            isort
            debugpy
        ]);
        venv.enable = true;
    };

    enterShell = ''
      echo "$(python --version) — venv ativo"
    '';
}
