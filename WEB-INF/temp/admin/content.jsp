<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Morris.js stacked</div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <div id="hero-area" style="height: 250px;"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                    <!-- morris graph chart -->
                    <div class="row-fluid section">
                         <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Morris.js <small>Monthly growth</small></div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <div id="hero-graph" style="height: 230px;"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                    <!-- morris bar & donut charts -->
                    <div class="row-fluid section">
                         <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Morris.js</div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span6 chart">
                                    <h5>Devices sold</h5>
                                    <div id="hero-bar" style="height: 250px;"></div>
                                </div>
                                <div class="span5 chart">
                                    <h5>Month traffic</h5>
                                    <div id="hero-donut" style="height: 250px;"></div>    
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                    <!-- jQuery knobs -->
                    <div class="row-fluid section">
                         <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">jQuery Knob</div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span3">     
                                    <input type="text" value="50" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#30a1ec" data-bgColor="#d4ecfd" data-width="140">
                                </div>
                                <div class="span3">
                                    <input type="text" value="75" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#8ac368" data-bgColor="#c4e9aa" data-width="140">
                                </div>
                                <div class="span3">
                                    <input type="text" value="35" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#5ba0a3" data-bgColor="#cef3f5" data-width="140">
                                </div>
                                <div class="span3">
                                    <input type="text" value="85" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#b85e80" data-bgColor="#f8d2e0" data-width="140">
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Bar Chart</div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <div id="catchart" style="width:100%;height:300px"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">Pie Chart</div>
                                </div>
                                <div class="block-content collapse in">
                                    <div class="span12">
                                       <div id="piechart1" style="width:100%;height:200px"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                        <div class="span6">
                            <!-- block -->
                            <div class="block">
                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left">Pie Chart</div>
                                </div>
                                <div class="block-content collapse in">
                                    <div class="span12">
                                       <div id="piechart2" style="width:100%;height:200px"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                    </div>

                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Multiple axes</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <div id="timechart" style="width:100%;height:400px"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
</body>
</html>