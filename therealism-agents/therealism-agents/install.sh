#!/usr/bin/env bash
# TheRealism × BubbleTree Agent Installer
# Installs agents to Claude Code's agent directory

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_AGENTS_DIR="$HOME/.claude/agents"
TOOL="${1:-claude-code}"

DIVISIONS=(product engineering ai design modules creative operations)

echo ""
echo "  ████████╗██╗  ██╗███████╗    ██████╗ ███████╗ █████╗ ██╗     ██╗███████╗███╗   ███╗"
echo "     ██╔══╝██║  ██║██╔════╝    ██╔══██╗██╔════╝██╔══██╗██║     ██║██╔════╝████╗ ████║"
echo "     ██║   ███████║█████╗      ██████╔╝█████╗  ███████║██║     ██║███████╗██╔████╔██║"
echo "     ██║   ██╔══██║██╔══╝      ██╔══██╗██╔══╝  ██╔══██║██║     ██║╚════██║██║╚██╔╝██║"
echo "     ██║   ██║  ██║███████╗    ██║  ██║███████╗██║  ██║███████╗██║███████║██║ ╚═╝ ██║"
echo "     ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝╚═╝     ╚═╝"
echo ""
echo "  × BubbleTree AI Studio — Agent Collection"
echo "  Installing to: $TOOL"
echo ""

install_claude_code() {
  mkdir -p "$CLAUDE_AGENTS_DIR"
  COUNT=0
  for division in "${DIVISIONS[@]}"; do
    SRC_DIR="$SCRIPT_DIR/$division"
    if [ -d "$SRC_DIR" ]; then
      for f in "$SRC_DIR"/*.md; do
        [ -f "$f" ] || continue
        cp "$f" "$CLAUDE_AGENTS_DIR/"
        AGENT_NAME=$(grep '^name:' "$f" | sed 's/name: //' | tr -d '"')
        echo "  ✓  $AGENT_NAME"
        COUNT=$((COUNT + 1))
      done
    fi
  done
  echo ""
  echo "  $COUNT agents installed to $CLAUDE_AGENTS_DIR"
  echo ""
  echo "  Activate in Claude Code:"
  echo "  > Activate BubbleTree Product Lead — let's plan the Project Hub sprint."
  echo "  > Use the BubbleTree Backend Architect to design the call sheet data model."
  echo "  > Activate TheRealism Creative Director and review this brief."
  echo ""
}

install_cursor() {
  CURSOR_DIR="$(pwd)/.cursor/rules"
  mkdir -p "$CURSOR_DIR"
  COUNT=0
  for division in "${DIVISIONS[@]}"; do
    SRC_DIR="$SCRIPT_DIR/$division"
    if [ -d "$SRC_DIR" ]; then
      for f in "$SRC_DIR"/*.md; do
        [ -f "$f" ] || continue
        SLUG=$(basename "$f" .md)
        DEST="$CURSOR_DIR/therealism-${SLUG}.mdc"
        cp "$f" "$DEST"
        COUNT=$((COUNT + 1))
      done
    fi
  done
  echo "  $COUNT agents installed to $CURSOR_DIR"
}

install_opencode() {
  OPENCODE_DIR="$(pwd)/.opencode/agents"
  mkdir -p "$OPENCODE_DIR"
  COUNT=0
  for division in "${DIVISIONS[@]}"; do
    SRC_DIR="$SCRIPT_DIR/$division"
    if [ -d "$SRC_DIR" ]; then
      for f in "$SRC_DIR"/*.md; do
        [ -f "$f" ] || continue
        SLUG=$(basename "$f" .md)
        cp "$f" "$OPENCODE_DIR/therealism-${SLUG}.md"
        COUNT=$((COUNT + 1))
      done
    fi
  done
  echo "  $COUNT agents installed to $OPENCODE_DIR"
}

case "$TOOL" in
  claude-code|claude)
    install_claude_code
    ;;
  cursor)
    install_cursor
    ;;
  opencode)
    install_opencode
    ;;
  *)
    echo "  Usage: ./install.sh [claude-code|cursor|opencode]"
    echo "  Default: claude-code"
    install_claude_code
    ;;
esac
