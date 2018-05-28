﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Default" %>

<!DOCTYPE html>

<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no,initial-scale=1"/>
    <title>全新福克斯，行【王者驾临篇】</title>
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/jsfix.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <link href="http://wx.app.bolaa.net/scenelib/scenelib.css" rel="stylesheet" />
    <link href="main.css" rel="stylesheet" />
    <script src="http://wx.app.bolaa.net/scenelib/scenelib.js"></script>
    <script src="js/wx.js"></script>
    <script src="js/focus.js"></script>
    <script src="js/city.js"></script>
</head>
<body class="space">
    <div class="sl-stage" id="stage">
        <div class="sl-container">
            <div class="sl-page" id="loading">

            </div>
            <div class="sl-page" id="p1" sl-onactive="onP1Active();">
                <div class="sl-page" id="p1_1">
                    <div class="sl-content" sl-zoom-type="cover">
                        <img src="img/bg1_1.jpg" class="fade" id="bg1_1" />
                        <img src="img/bg1_2.jpg" class="fade" id="bg1_2" />
                    </div>
                    <div class="sl-content">
                        <img src="img/text1_1.png" class="text1 step1" id="text1_1" />
                        <img src="img/text1_2.png" class="text2 step1" id="text1_2" />

                        <img src="img/text2_1.png" class="text1 step1" id="text2_1" />
                        <img src="img/text2_2.png" class="text2 step1" id="text2_2" />
                    </div>
                </div>
                <div class="sl-page fade" id="p1_2">
                    <div class="sl-content" sl-zoom-type="cover">
                        <img src="img/bg1_3.jpg" />
                        <img src="img/bg1_3_1.jpg" id="bg1_3" class="fade" />
                        <canvas id="metor" width="640" height="868"></canvas>
                        <img src="img/metor2.png" id="img_metor" style="display: none;" />
                        <img src="img/metor_mask.png" id="img_metor_mask" style="display: none;" />
                    </div>
                    <div class="sl-content">
                        <img src="img/text3.png" class="text3 fade" />
                        <img src="img/text4.png" class="text4 fade" />

                        <img src="img/title.png" class="title fade" />
                        <img src="img/text5.png" class="text5 fade" />
                        <img src="img/car8.png" class="car9 out" />
                    </div>
                </div>

                <div class="sl-page fade" id="p1_3">
                    <div class="sl-content" sl-zoom-type="cover">
                        <img src="img/bg1_4.jpg" />
                    </div>
                    <div class="sl-content">
                        <img src="img/engine.png" class="engine" />
                        <img src="img/engine1.png" class="engine fade" id="engine1" />
                        <img src="img/text6.png" class="text6 fade" style="opacity: 1;" />
                        <img src="img/text7.png" class="text7 fade" />
                    </div>
                </div>

                <div class="sl-page fade" id="p1_4">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900">
                        <img src="img/bg1_5.jpg" />
                    </div>
                    <div class="sl-content">
                        <img src="img/monitor_small.png" class="monitor_small" />
                        <img src="img/scalehand.png" class="scalehand" style="display: none;" />
                    </div>
                </div>

                <div class="sl-page fade" id="p1_5">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900">
                        <img src="img/bg1_6.jpg" />
                    </div>
                    <div class="sl-content">
                        <img src="img/text9.png" class="text9 fade" />
                    </div>
                </div>

                <div class="sl-page fade" id="p1_7">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900">
                        <img src="img/bg1_7.jpg" />

                        <img src="img/text10.png" class="text10" />
                        <img src="img/text11.png" class="text11" style="opacity: 0;" />

                        <img src="img/car3.png" class="car3" />

                        <img src="img/btnstart.png" class="btnstart" style="display: none;" onclick="carStart();" />
                    </div>
                </div>

                <div class="sl-page space fade" id="p1_8">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900">
                        <div id="p1_8_1">
                            <div class="grid grid_speed1"></div>
                            <img src="img/car5.png" class="car5" style="left: 185px; top: -300px;" />
                            <img src="img/car5.png" class="car5" style="left: 605px; top: 1136px;" />
                            <img src="img/car5.png" class="car6" />

                            <div class="car7_area">
                                <img src="img/car7.png" class="car7" style="top: 108px;" />
                                <img src="img/car7.png" class="car7" style="top: 268px;" />
                                <img src="img/car7.png" class="car7" style="top: 628px;" />
                                <img src="img/car7.png" class="car7" style="top: 788px;" />
                            </div>

                            <canvas id="stop_line" width="303" height="145" style="display: none;"></canvas>

                            <img src="img/stopline1.png" style="display: none;" id="stopline1" />
                            <img src="img/stopline2.png" style="display: none;" id="stopline2" />

                            <img src="img/car4.png" class="car4" style="top: 568px;" />
                            <div class="car42" style="display: none;">
                                <img src="img/car4.png" />
                            </div>

                            <div class="radar" id="radar1">
                                <img src="img/radar_0.png" style="display: none;" />
                                <img src="img/radar_1.png" style="display: none;" />
                                <img src="img/radar_2.png" style="display: none;" />
                                <img src="img/radar_3.png" style="display: none;" />
                            </div>

                            <div class="radar" id="radar2">
                                <img src="img/radar_10.png" style="display: none;" />
                                <img src="img/radar_11.png" style="display: none;" />
                                <img src="img/radar_12.png" style="display: none;" />
                                <img src="img/radar_13.png" style="display: none;" />
                            </div>
                        </div>
                        <img src="img/text12.png" class="text12 fade" />
                        <img src="img/text12_1.png" class="text12_1 fade" />
                        <img src="img/text13.png" class="text13 fade" />
                        <img src="img/text14.png" class="text14 fade" />
                        
                    </div>
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900" id="p_8_2">
                        <img src="img/text15.png" class="text15 fade" />
                        <img src="img/text16.png" class="text16 fade" />
                    </div>
                </div>

                <div class="sl-page space fade" id="p1_9_2">
                    <div class="sl-page" id="attrs">
                        <div class="content"></div>
                    </div>
                    <div class="sl-page" id="attrs2">
                        <div class="content" style="top: 0%;"></div>
                    </div>
                </div>

                <div class="sl-page fade" id="p1_9">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900">
                        <img src="img/bg1_8.jpg" />
                        <img src="img/bg1_9.jpg" class="fade" id="bg1_9" />
                        <img src="img/text17.png" class="text17 fade" />
                        <img src="img/car8.png" class="car8" />
                        <a class="btntry" onclick="goTry();"></a>
                        <a class="btnhome" onclick="location.reload();"></a>
                        <a class="btnattr" onclick="backAttr();"></a>
                    </div>
                </div>

                

                <div class="sl-page fade" id="p1_10">
                    <div class="sl-content" sl-zoom-type="height" sl-zoom-width="900" style="display: none;">
                        <img src="img/bg1_10.jpg" />
                        <img src="img/text17.png" class="text17" />
                        <input type="text" class="box" id="p_name" maxlength="20" />
                        <input type="tel" class="box" id="p_phone" maxlength="11" />

                        <span class="label" id="s_prov"></span>
                        <span class="label" id="s_city"></span>
                        <select class="list" id="p_prov">
                            <option value="">请选择</option>
                        </select>
                        <select class="list" id="p_city"></select>

                        <a class="btnsubmit" onclick="submitTry();"></a>
                    </div>
                </div>
            </div>
        </div>
        <img class="logo-top" src="img/logo-top.png" />
        <img class="logo" src="img/logo.png" />
        <img class="up" src="img/up.png" style="display: none;" />
    </div>
    <audio src="img/bgm.mp3" preload="auto" loop="loop" id="bgm" style="display: none;">
        <source src="img/bgm.mp3" type="audio/mp3" />
    </audio>
    
    <script type="text/javascript">
        var bgm = document.getElementById('bgm');
        var bgm_played = false;
        bgm.addEventListener('playing', function () {
            bgm_played = true;
        });
        document.addEventListener('touchstart', function (evt) {
            document.removeEventListener('touchstart', arguments.callee);
            if (!bgm_played) {
                bgm.play();
            }
        });

        for (var i = 0; i < PROV.length; i++) {
            $('<option></option>').attr('value', PROV[i].name).text(PROV[i].name).appendTo($('#p_prov'));
        }

        function onProvChange() {
            $('#p_city').empty();
            $('<option></option>').attr('value', '').text('请选择').appendTo($('#p_city'));
            var prov = $('#p_prov').val();
            for (var i = 0; i < PROV.length; i++) {
                if (PROV[i].name == prov)
                {
                    for (var j = 0; j < PROV[i].cities.length; j++) {
                        $('<option></option>').attr('value', PROV[i].cities[j]).text(PROV[i].cities[j]).appendTo($('#p_city'));
                    }
                    break;
                }
            }
            $('#s_prov').text(prov);

            $('#s_city').text('');
        }

        $('#p_prov').change(onProvChange);
        

        $('#p_city').change(function () {
            $('#s_city').text($('#p_city').val());
        });
    </script>
</body>
</html>
