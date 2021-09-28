<%@ page import="javax.script.ScriptEngineManager" %>
<%@ page import="javax.script.ScriptEngine" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculadora</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .container {
        display: flex;
        height: 100vh;
        width: 100vw;
        align-items: center;
        justify-content: center;
        flex-flow: column;
    }

    .result {
        padding: 20px;
        color: #fff;
        background: black;
        width: 100%;
        display: flex;
        justify-content: flex-end;
    }

    form {
        width: 250px;
        background: black;
        border: 1px solid black;
        position: relative;
    }

    .grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 1px;
    }

    .column-2 {
        grid-column: span 2;
    }

    .column-3 {
        grid-column: span 3;
    }

    .button {
        outline: none;
        border: none;
        background: whitesmoke;
        color: black;
        transition: background 0.25s ease;
        padding: 10px;
    }

    .button:hover {
        background: white;
        cursor: pointer;
    }

    .button.orange {
        background: orange;
    }

    .button.orange:hover {
        background: #ff9000;
    }

    #operation-input {
        visibility: hidden;
        pointer-events: none;
        position: absolute;
    }

</style>
<body>
<div class="container">
    <%
        request.setCharacterEncoding("UTF-8");
        String operation = request.getParameter("operation");
        Object result = 0.0;

        if (operation != null) {
            ScriptEngineManager scriptEngineManager = new ScriptEngineManager();
            ScriptEngine scriptEngine = scriptEngineManager.getEngineByName("JavaScript");

            try {
                result = scriptEngine.eval(operation);

                if (result instanceof Double && (Double.isInfinite((Double) result) || Double.isNaN((Double) result))) {
                    result = 0.0;
                }
            } catch (Exception ignored) {
            }
        }
    %>

    <form id="form">
        <div id="result" class="result"><%= result %></div>
        <div class="grid">
            <input id="operation-input" class="operation-input" name="operation" />
            <button type="button" class="button orange column-2">C</button>
            <button type="button" class="button orange">&larr;</button>
            <button type="button" class="button orange">/</button>

            <button type="button" class="button">7</button>
            <button type="button" class="button">8</button>
            <button type="button" class="button">9</button>
            <button type="button" class="button orange">*</button>

            <button type="button" class="button">4</button>
            <button type="button" class="button">5</button>
            <button type="button" class="button">6</button>
            <button type="button" class="button orange">-</button>

            <button type="button" class="button">1</button>
            <button type="button" class="button">2</button>
            <button type="button" class="button">3</button>
            <button type="button" class="button orange">+</button>

            <button type="button" class="button column-3">0</button>
            <button type="button" class="button orange">=</button>
        </div>
    </form>
</div>
<script type="text/javascript">
    let buttons = document.querySelectorAll('button');
    let resultEl = document.getElementById('result');
    let operation = '0';
    let operators = ['+', 'x', '&divide;', '-'];
    let operator = null;

    buttons.forEach(button => {
        button.addEventListener('click', (event) => {
            if (operation === '0')
                operation = '';

            let symbolOrNumber = event.target.innerHTML;
            let parsedSymbolOrNumber = parseInt(symbolOrNumber);

            if (isNaN(parsedSymbolOrNumber)) {
                handleSymbol(symbolOrNumber);
            } else {
                handleNumber(parsedSymbolOrNumber);
            }

            resultEl.innerHTML = operation;
        });
    });

    function handleSymbol(symbol) {
        let lastCharacterOfOperation = operation.charAt(operation.length);

        switch (symbol) {
            case "C":
                operation = '0';
                operator = null;
                break;
            case "=":
                handleSubmit();
                break;

            case '\u2190':
                if (operators.includes(lastCharacterOfOperation))
                    return;

                operation = operation.slice(0, -1);

                if (!operation.length) {
                    operation = '0';
                }
                break;
            default:
                console.log(symbol);
                if (operators.includes(lastCharacterOfOperation))
                    return;

                operation = operation + symbol;
                break;
        }
    }

    function handleNumber(number) {
        operation = operation + number;
    }

    function handleSubmit() {
        let operationInput = document.getElementById('operation-input');
        let form = document.forms['form'];
        operationInput.value = operation;

        if (form) {
            form.submit();
        }
    }
</script>
</body>
</html>