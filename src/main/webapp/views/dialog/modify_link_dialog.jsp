<%--
  Created by IntelliJ IDEA.
  User: DuanJiaNing
  Date: 2018/2/17
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑联系我</title>

</head>
<body>

<div class="modal fade" tabindex="-1" role="dialog" id="modifyLinkDialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content dialog-title-container">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title dialog-title">编辑联系我</h4>
            </div>

            <div class="modal-body dialog-body">
                <div class="row">
                    <div class="col-md-4">
                        <span class="glyphicon glyphicon glyphicon-chevron-up center-icon" aria-hidden="true"
                              onclick="$('#modifyLinkListGroup').animate({scrollTop: 0}, 300);"></span>
                        <br>
                        <br>
                        <div class="list-group" style="max-height: 300px;overflow: auto;margin: 0 50px;"
                             id="modifyLinkListGroup"></div>
                        <span class="glyphicon glyphicon glyphicon-chevron-down center-icon" aria-hidden="true"
                              onclick="$('#modifyLinkListGroup').animate({scrollTop: $('#modifyLinkListGroup').css('height')}, 300);"></span>
                    </div>

                    <div class="col-md-8" style="min-height: 400px">
                        <p class="text-center lead">
                            <small class="indicator" style="font-weight: bold" id="modifyLinkAsEdit"
                                   onclick="toggleDivState('chooseEditLink','chooseDeleteLink','modifyLinkAsEdit',
                                   'modifyLinkAsDelete','modifyLinkErrorMsg','');clearDiv('showChoosedLink');selectLinkModel=1;"
                            >编辑
                            </small>&nbsp;&nbsp;<span class="vertical-line">|</span>&nbsp;&nbsp;<small
                                class="indicator" id="modifyLinkAsDelete"
                                onclick="toggleDivState('chooseDeleteLink','chooseEditLink','modifyLinkAsDelete',
                                'modifyLinkAsEdit','modifyLinkErrorMsg','');clearDiv('showChoosedLink');selectLinkModel=2;">
                            删除
                        </small>
                        </p>

                        <small style="color: darkgray;">选择链接</small>
                        <hr class="default-line">
                        <p id="showChoosedLink" style="line-height: 24px;min-height: 120px"></p>

                        <div id="chooseEditLink">
                            <div class="form-group">
                            </div>
                        </div>

                        <div id="chooseDeleteLink" style="display: none;">
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </div>

                <span class="error-msg" id="modifyLinkErrorMsg"></span>

            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script src="/js/dialog/modify_link_dialog.js"></script>
</body>
</html>