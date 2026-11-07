# Professional Video Editor — Codex Skill

Skill para orientar o Codex a analisar, editar, renderizar, verificar e entregar vídeos diretamente no workspace atual, sem criar um site separado.

## Regra central
O Codex deve analisar cada vídeo e o prompt, criar obrigatoriamente um plano de edição específico antes de alterar a timeline, executar esse plano e conferir o render. Motion design, animações, zooms, transições e efeitos são opcionais e só devem ser usados quando melhorarem o resultado. A pasta `references/` ensina decisões de edição profissional (estrutura, ritmo, continuidade, cortes J/L, vídeo promocional, legendas, áudio e cor) e registra referências públicas. O Codex deve consultar os guias conforme a necessidade, sem aplicar efeitos ou presets automaticamente.

## Instalação
1. Extraia o arquivo ZIP.
2. Coloque a pasta `professional-video-editor` no diretório de skills que sua instalação do Codex utiliza. Um caminho comum é `~/.agents/skills/professional-video-editor/`.
3. Confirme que `SKILL.md` está diretamente dentro dessa pasta.
4. Se estiver trabalhando em um repositório e quiser uma skill local ao projeto, coloque a pasta em `.agents/skills/professional-video-editor/`, respeitando as instruções da versão do Codex em uso.
5. Peça ao Codex para usar a skill `professional-video-editor` ao editar o vídeo.

O caminho exato pode variar conforme a versão e a configuração do Codex. Esta skill não é instalada automaticamente apenas por baixar o ZIP.

## Como usar
Envie ou disponibilize o vídeo no workspace e escreva seu prompt com o objetivo, referências e requisitos que desejar. A skill instrui o Codex a inferir detalhes razoáveis sem fazer perguntas desnecessárias.

## Limites importantes
A skill orienta o fluxo de trabalho, mas não instala automaticamente FFmpeg, codecs, aplicativos ou serviços de IA. O Codex precisa ter acesso aos arquivos e a ferramentas compatíveis. A skill exige que ele seja honesto sobre o que conseguiu executar e verificar.


## Recursos operacionais adicionados

- `scripts/inspect_media.sh`: gera metadados com ffprobe e, quando possível, uma folha de contato para inspeção inicial.
- `scripts/validate_export.sh`: verifica a decodificação completa e salva relatórios de metadados, detecção visual e loudness. Os diagnósticos precisam ser interpretados; não são uma aprovação automática.
- `references/edit-decision-list.md`: estrutura para planejar cortes com marcações temporais, justificativas e critérios de verificação.
- `references/quality-control.md`: lista de revisão profissional de imagem, áudio, legendas, enquadramento e exportação.
- `references/tool-selection.md`: critérios para escolher ferramentas conforme a tarefa e as capacidades realmente disponíveis.

Os scripts exigem FFmpeg/ffprobe instalados no ambiente. Não instalam dependências nem enviam arquivos para a nuvem. A skill não instala ferramentas automaticamente.

## Estrutura do repositório

```text
.
├── SKILL.md                 # Instruções principais da skill
├── agents/openai.yaml       # Metadados de ativação
├── references/              # Guias editoriais e de qualidade
├── scripts/                 # Inspeção e validação local com FFmpeg
├── CONTRIBUTING.md          # Padrões para contribuições
└── LICENSE                  # Licença MIT
```

## Publicação e segurança

- Não envie vídeos de clientes, arquivos de projeto privados, credenciais ou chaves para este repositório.
- Os scripts processam arquivos locais e não instalam dependências nem enviam mídia para a nuvem.
- FFmpeg e ffprobe precisam estar disponíveis para usar os scripts.
- Esta é uma skill comunitária e não é um produto oficial da OpenAI.

## Licença

Distribuído sob a [Licença MIT](LICENSE).

## Contribuições

Leia [CONTRIBUTING.md](CONTRIBUTING.md) antes de propor melhorias.
