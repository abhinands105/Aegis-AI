#!/bin/bash
cd /workspaces/Aegis-AI || exit

mkdir -p docs \
         data/raw \
         data/processed \
         data/sample \
         src/data_collection \
         src/feature_extraction \
         src/models \
         src/training \
         src/inference \
         src/dashboard \
         notebooks \
         tests \
         configs \
         scripts \
         deployment/client \
         deployment/server \
         deployment/docker

touch README.md \
      requirements.txt \
      .gitignore \
      docs/README.md \
      configs/config.yaml

for folder in src src/data_collection src/feature_extraction src/models src/training src/inference; do
    touch "$folder/__init__.py"
done

echo "✅ Aegis-AI project structure created successfully in /workspaces/Aegis-AI"
