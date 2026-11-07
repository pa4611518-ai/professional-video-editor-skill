# Professional Video Editor para Codex

Uma skill para orientar o Codex a **analisar, planejar, editar, renderizar e revisar** vídeos no workspace atual. Ela prioriza decisões editoriais intencionais: não cria site separado, não aplica efeitos por padrão e não chama um render de “aprovado” sem verificar o que realmente foi feito.

## O que ela faz

- Lê o briefing e identifica objetivo, público, plataforma, formato e restrições.
- Inspeciona a mídia antes de editar, com metadados e uma folha de contato quando FFmpeg está disponível.
- Cria um plano de edição específico para o material antes de alterar a timeline.
- Executa cortes, áudio, cor, legendas, gráficos e motion design somente quando ajudam o resultado.
- Renderiza o vídeo e separa verificação técnica de revisão editorial real.
- Preserva os arquivos originais e registra limitações de forma honesta.

## Princípio central

> Analise primeiro. Escolha o tratamento depois. Edite em seguida. Revise antes de entregar.

Transições, zooms, animações, efeitos e motion design são opcionais. Uma edição limpa, com bom ritmo e áudio claro, é frequentemente a decisão mais profissional.

## Instalação

1. Baixe ou clone este repositório.
2. Coloque a pasta `professional-video-editor` no diretório de skills usado pela sua instalação do Codex. Um caminho comum é `~/.agents/skills/professional-video-editor/`.
3. Confirme que o arquivo `SKILL.md` está diretamente dentro dessa pasta.
4. Em um projeto específico, você pode usar `.agents/skills/professional-video-editor/`, se essa for a convenção da sua instalação.
5. Peça ao Codex para usar a skill `professional-video-editor` ao trabalhar no vídeo.

O local exato pode variar conforme a versão e a configuração do Codex. Baixar a pasta não instala dependências automaticamente.

## Uso rápido

Coloque o vídeo no workspace e dê um briefing claro. Exemplo:

```text
Use a skill professional-video-editor neste vídeo.
Crie um Reels vertical de até 35 segundos, com ritmo direto e foco na fala principal.
Mantenha as partes sobre preço e prazo. Use legendas apenas se puder revisar o texto.
Não use efeitos chamativos. Exporte em MP4 1080x1920.
```

Quanto mais claro o objetivo, público, plataforma, duração e partes obrigatórias, melhor a decisão editorial.

## Ferramentas locais

Os scripts são opcionais e processam mídia localmente:

```bash
bash scripts/inspect_media.sh input.mp4 work/inspection
bash scripts/validate_export.sh output/final.mp4 work/validation
```

- `inspect_media.sh` salva metadados e, quando `ffmpeg` estiver disponível, cria uma folha de contato distribuída pelo vídeo.
- `validate_export.sh` verifica se o arquivo existe, não está vazio, pode ser decodificado e gera relatórios técnicos de vídeo e áudio.

Eles exigem `ffmpeg` e `ffprobe` disponíveis no ambiente. Relatórios técnicos são sinais para revisão, não uma garantia de qualidade criativa.

## Estrutura

```text
.
├── SKILL.md                 # Instruções centrais
├── agents/openai.yaml       # Metadados de ativação
├── references/              # Guias de edição, áudio, cor e qualidade
├── scripts/                 # Inspeção e validação com FFmpeg
├── templates/               # Modelo de plano de edição
├── CONTRIBUTING.md          # Regras para contribuições
└── LICENSE                  # Licença MIT
```

## Privacidade e limites

- Não publique vídeos de clientes, projetos privados, chaves ou credenciais neste repositório.
- A skill não instala programas, compra serviços, acessa contas, envia mídia à nuvem ou usa IA paga sem autorização.
- Ela escolhe ferramentas que já estejam disponíveis e descreve com clareza o que foi ou não foi possível fazer.
- Esta é uma skill comunitária, não um produto oficial da OpenAI.

## Contribuições e licença

Leia [CONTRIBUTING.md](CONTRIBUTING.md) antes de contribuir. Este projeto usa a [Licença MIT](LICENSE).
