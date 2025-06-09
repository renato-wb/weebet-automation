from Browser import browser
from robot.api.deco import keyword

@keyword
def handle_alert_and_get_text():
    """Captura o texto do alerta e o aceita."""
    dialog_text = {}

    def handler(dialog):
        dialog_text['message'] = dialog.message
        dialog.accept()

    browser._playwright_context.on("dialog", handler)

    # Retorna o texto após o evento
    return dialog_text.get('message', 'Nenhum alerta capturado')