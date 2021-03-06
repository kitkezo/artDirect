<nav class="navbar navbar-inverse navbar-custom">
    <div class="container-fluid">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.jsp"><img src="../images/logo2.png"class="nav-bar-image"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" data-toggle="modal" data-target="#myModal">Iniciar Sesi�n</a>
                </li>
                <li>
                    <a href="alta.jsp">Registrarse</a>
                </li>
            </ul>
        </div>
    </div>   
</nav>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                <h4 class="modal-title" id="lineModalLabel">Iniciar Sesi�n</h4>
            </div>
            <div class="modal-body">
                <form action="redirige.jsp" method="post">
                    <div class="form-group">
                        <label for="login-email">Correo electr�nico</label>
                        <input type="email" class="form-control" name="login-email">
                    </div>
                    <div class="form-group">
                        <label for="login-pass">Contrase�a</label>
                        <input type="password" class="form-control" name="login-pass">
                    </div>
                    <input type="submit" class="btn btn-info" name="login-submit" value="Iniciar Sesi�n">
                    <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cerrar">

                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>