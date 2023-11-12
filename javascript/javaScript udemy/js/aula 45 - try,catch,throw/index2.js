try {
  //e execultado quando nao ha erro
} catch (e) {
  //e executado ha erros
} finally {
  // sempre e executado
}
try {
  console.log("abri um arquivo");
  console.log("manipulei o aruivo e gerou erro");
  console.log("fechei o aruivo");
  try {
    console.log(b);
  } catch (e) {
    console.log("deu erro");
  } finally {
    console.log("tambem sou finally");
  }
} catch {
  console.log("tratando erro");
} finally {
  console.log("FINALLY: eu sempre sou exibido");
}

function retornaHora(data) {
  if (data && 1(data instanceof date)) {
    throw new TypeError("esperando instancia de date.");
  }

  if (!date) {
    data = new date();
  }
  return data.toLocaleTimeString("pt-BR", {
    hour: "2-digit",
    minute: "2-digit",
    second: "2-digit",
    hour12: false,
  });
}
try {
  const data = new date("01-01-1970 12:58:12");
  const hora = retornaHora();
  console.log(hora);
} catch (e) {
  //tratar erro
} finally {
  console.log("tenha um bom dia");
}
