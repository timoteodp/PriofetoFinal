<%-- 
    Document   : visualizar_contrato
    Created on : 25/11/2019, 11:02:46
    Author     : Administrador
--%>

<%@page import="model.ContratoDAO"%>
<%@page import="model.Contrato"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta content="width=device-width, 
              initial-scale=1, maximum-scale=1, 
              user-scalable=no"
              name="viewport"/>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
        <link rel="stylesheet" href="datatables/jquery.dataTables.min.css"/>
        <title>Visualizar Contrato</title>

    </head>
    <body style="
          background-color: #0873BA;
          ">
        <div class="container" style="
             background-color: white;
             padding: 15px 15px 15px 15px;
             margin-top: 40px;
             margin-bottom: 20px;
             border-radius: 1%;
             ">
            <%@include file="banner.jsp" %>
            <%@include file="menu.jsp" %>
            <h1>Visualizar Contrato</h1>
         
                    <a class="btn btn-primary" href="listar_contrato.jsp">
                        <i class="glyphicon glyphicon-arrow-left"> Voltar</i>
                    </a>


             
            <table id="visualizaContrato">



                <jsp:useBean class="model.ContratoDAO" id="cDAO"/>
                <tbody>
                    <c:forEach var="c" items="${cDAO.getListaVisualizarContrato(param.idcontrato)}">

                        <c:if test="${ulogado.idusuario==c.locatario.usuario.idusuario || ulogado.perfil.idperfil==1 || ulogado.perfil.idperfil==2}">

                        <div align="justify" font-size="16" id="visualizarcontrato">
                            <h4> <b>Contrato de Loca????o </b></h4>

                            <p>- Os signat??rios deste instrumento de loca????o:</p>
                            <p>Locador: ${c.locador.nome}, CPF: ${c.locador.cpf} RG: <fmt:formatNumber pattern="#0,000.###" value="${c.locador.rg}"/> SSP/DF.</p>
                            <p>Locat??rio: ${c.locatario.nome}, CPF: ${c.locatario.cpf} RG: <fmt:formatNumber pattern="#0,000.###" value="${c.locatario.rg}"/> SSP/DF.</p>
                            <p>- Do objeto finalidade de loca????o e localiza????o do im??vel: </p>
                            <p>O locador ?? legitimo propriet??rio do im??vel situado: ${c.imovel.endereco}.</p>
                            <p>Loca-o neste ato para o locat??rio para fins residenciais. N??o podendo ser mudada sua destina????o sem o
                                consentimento expresso do locador. </p>
                            <p>- O prazo e valores da loca????o:</p>
                            <p>O prazo da loca????o ?? de ${c.qtdmensalidade} meses, a come??ar do dia <fmt:formatDate pattern="dd/MM/YYYY" value="${c.datainicio}"/> at?? o dia  
                                <fmt:formatDate pattern="dd/MM/YYYY" value="${c.datafim}"/>.</p>
                            <p>O valor de aluguel ?? R$ <fmt:formatNumber pattern="#,##0.00" value="${c.total}"/> que o locat??rio se compromete a
                                a pagar pontualmente no mesmo dia do in??cio do contrato"
                        + " durante todos os meses ao locador ou a seu procurador legalmente constitu??do.
                                Concordam as partes entre si, na assinatura deste contrato, que o locat??rio pagar?? o valor de 1 (um)
                                aluguel adiantado. O qual dever?? ser descontado no ultimo m??s a ser pago, quando da entrega do im??vel.
                                O locador dever?? emitir recibo a cada aluguel pago pelo locat??rio como comprovante de pagamento legal. </p>

                            <p>- Atributos e demais encargos:</p>

                            <p>Havendo reajuste do aluguel, o ??ndice a ser cobrado ser?? de acordo com o estipulado pelo governo ou
                                combinado entre as partes e quando da renova????o do contrato.</p>
                            <p>Em caso de atraso ao pagamento do aluguel, ser??o cobrados juros de 0,03% ao dia e multa de 3% ao m??s.</p>
                            <p>O locat??rio n??o ter?? direito de reten????o ou indeniza????o a quaisquer benfeitorias ou constru????es de qualquer
                                natureza, ainda que autorizadas ou mesmo necess??rias obras no im??vel locado as quais incorporam
                                imediatamente a este contrato a mesma n??o podendo ser retiradas ou desfeitas sem autoriza????o por escrito
                                do locador.</p>

                            <p> - Dos direitos e obriga????es gerais: </p>

                            <p>?? expressamente proibido ao locat??rio, salvo pr??vio consentimento escritor do locador: ceder, vender o
                                aluguel ou transferir direitos do presente contrato, emprestar ou sublocar total e parcialmente o im??vel.</p>
                            <p>Obriga-se ao locat??rio o pagamento do consumo de ??gua, luz e telefone cabendo-lhe efetuar estes
                                pagamentos nas devidas ??pocas.</p>
                            <p>O locat??rio salvo as obras que importem na seguran??a do im??vel obriga-se por todas as outras. Devendo
                                trazer o im??vel em boas condi????es de higiene, limpeza com os aparelhos sanit??rios e de ilumina????o,
                                pinturas, telhados, vidra??as, m??rmores, fechos, torneiras, pias, banheiros, ralos e demais acess??rios em
                                perfeito estado de conserva????o e funcionamento para assim restitui-los quando findo ou rescindido este
                                contrato.</p>
                            <p>Fica o locat??rio obrigado ao t??rmino deste contrato a entregar o im??vel pintado conforme recebido.</p>
                            <p>?? proibido animais de qualquer esp??cie dentro do im??vel, assim como tamb??m usar aparelhos sonoros em
                                alto volume.</p>
                            <p>No caso de desapropria????o do im??vel locado, ficar?? o locador desobrigado por todas as cl??usulas deste
                                contrato, ressalvada ao locat??rio t??o somente a faculdade de haver o poder desapropriante, a indeniza????o a
                                que por ventura tiver direito.</p>
                            <p>Na rescis??o do contrato antes da data estipulada, manifestada por uma das partes, a parte desistente
                                obriga-se a efetuar o pagamento no valor equivalente a UM aluguel vigente. </p>
                            <p>E por assim terem contratado,
                                assinam o presente em 02 (duas) vias, a seguir d??o cumprimento ??s exig??ncias e formalidades legais.</p>
                            <p>Bras??lia, <fmt:formatDate pattern="dd/MM/YYYY" value="${c.datainicio}"/></p>

                            <p>______________________________<p>                                              
                            <p>Locador: ${c.locador.nome}       </p>                                                      
                            <p>CPF: ${c.locador.cpf}      </p>                                                       
                            <p>RG: ${c.locador.rg} SSP/DF     </p>        

                            ______________________________
                            <p>Locat??rio: ${c.locatario.nome}</p>
                            <p>CPF: ${c.locatario.cpf}</p>
                            <p>RG: ${c.locatario.rg} SSP/DF</p>

                        </div>



                    </c:if>

                </c:forEach>
                </tbody>
            </table>    
        </div>

        <script type="text/javascript" src="datatables/jquery.js"></script>
        <script type="text/javascript" src="datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#visualizaContrato").dataTable({
                    "bJQueryUI": true,
                    "oLanguage": {
                        "sProcessing": "Processando...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "N??o foram encontrados resultados",
                        "sInfo": "Mostrando de _START_ at?? _END_ de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando de 0 at?? 0 de 0 registros",
                        "sInfoFiltered": "",
                        "sInfoPostFix": "",
                        "sSearch": "Pesquisar",
                        "sUrl": "",
                        "oPaginate": {
                            "sFirst": "Primeiro",
                            "sPrevious": "Anterior",
                            "sNext": "Pr??ximo",
                            "sLast": "??ltimo"
                        }
                    }
                })
            });
        </script>            

    </body>
</html>

