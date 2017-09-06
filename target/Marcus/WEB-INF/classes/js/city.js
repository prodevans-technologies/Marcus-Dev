        var cityName = $.session.get('curcity');

        if (cityName == null)
        {
            cityName = $('#city').find(":selected").text();
        }

        $("#city").change(function () {
            cityName = $('#city').find(":selected").text();
            $.session.set('curcity', cityName);
            location.reload();

        });

        var isMobile = {
            Android: function () {
                return navigator.userAgent.match(/Android/i);
            },
            BlackBerry: function () {
                return navigator.userAgent.match(/BlackBerry/i);
            },
            iOS: function () {
                return navigator.userAgent.match(/iPhone|iPad|iPod/i);
            },
            Opera: function () {
                return navigator.userAgent.match(/Opera Mini/i);
            },
            Windows: function () {
                return navigator.userAgent.match(/IEMobile/i);
            },
            any: function () {
                return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
            }};

        jQuery(function ($) {
            if (!isMobile.any())
                $('#is-desktop').toggleClass('show hide');
            else
                $('#is-mobile').toggleClass('show hide');
        });

        $("[data-slider]")
                .each(function () {
                    var input = $(this);
                    $("<span>")
                            .addClass("output")
                            .insertAfter($(this));
                })
                .bind("slider:ready slider:changed", function (event, data) {

                    if (cityName == 'Bengaluru')
                    {

                        if (data.value.toFixed(3) == 100)
                        {
                            $("#basic").css('color', '#A9A9A9');
                            $("#premium").css('color', '#A9A9A9');
                            $("#standard").css('color', '#000000');
                            $("#dbasic").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#A9A9A9');
                            $("#dstandard").css('color', '#000000');
                            $("#slidertextprice").html('&#8377; 1140');
                            $("#slidertextdata").text('60GB Data');
                            $("#slidertextspeed").text('512Kbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 1140');
                            $("#dslidertextdata").text('60GB Data');
                            $("#dslidertextspeed").text('512Kbps Post FUP Speed');
                        }
                        if (data.value.toFixed(3) == 0)
                        {

                            $("#standard").css('color', '#A9A9A9');
                            $("#premium").css('color', '#A9A9A9');
                            $("#basic").css('color', '#000000');
                            $("#dstandard").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#A9A9A9');
                            $("#dbasic").css('color', '#000000');
                            $("#slidertextprice").html('&#8377; 849');
                            $("#slidertextdata").text('40GB Data');
                            $("#slidertextspeed").text('512Kbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 849');
                            $("#dslidertextdata").text('40GB Data');
                            $("#dslidertextspeed").text('512Kbps Post FUP Speed');
                        }
                        if (data.value.toFixed(3) == 200)
                        {

                            $("#basic").css('color', '#A9A9A9');
                            $("#premium").css('color', '#000000');
                            $("#standard").css('color', '#A9A9A9');
                            $("#dbasic").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#000000');
                            $("#dstandard").css('color', '#A9A9A9');
                            $("#slidertextprice").html('&#8377; 1875');
                            $("#slidertextdata").text('100GB Data');
                            $("#slidertextspeed").text('2Mbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 1875');
                            $("#dslidertextdata").text('100GB Data');
                            $("#dslidertextspeed").text('2Mbps Post FUP Speed');
                        }
                    }
                    if (cityName == 'Hyderabad')
                    {

                        if (data.value.toFixed(3) == 100)
                        {
                            $("#basic").css('color', '#A9A9A9');
                            $("#premium").css('color', '#A9A9A9');
                            $("#standard").css('color', '#000000');
                            $("#dbasic").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#A9A9A9');
                            $("#dstandard").css('color', '#000000');
                            $("#slidertextprice").html('&#8377; 100');
                            $("#slidertextdata").text('50GB Data');
                            $("#slidertextspeed").text('512Kbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 100');
                            $("#dslidertextdata").text('50GB Data');
                            $("#dslidertextspeed").text('512Kbps Post FUP Speed');
                        }
                        if (data.value.toFixed(3) == 0)
                        {

                            $("#standard").css('color', '#A9A9A9');
                            $("#premium").css('color', '#A9A9A9');
                            $("#basic").css('color', '#000000');
                            $("#dstandard").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#A9A9A9');
                            $("#dbasic").css('color', '#000000');
                            $("#slidertextprice").html('&#8377; 200');
                            $("#slidertextdata").text('40GB Data');
                            $("#slidertextspeed").text('512Kbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 200');
                            $("#dslidertextdata").text('40GB Data');
                            $("#dslidertextspeed").text('512Kbps Post FUP Speed');
                        }
                        if (data.value.toFixed(3) == 200)
                        {

                            $("#basic").css('color', '#A9A9A9');
                            $("#premium").css('color', '#000000');
                            $("#standard").css('color', '#A9A9A9');
                            $("#dbasic").css('color', '#A9A9A9');
                            $("#dpremium").css('color', '#000000');
                            $("#dstandard").css('color', '#A9A9A9');
                            $("#slidertextprice").html('&#8377; 300');
                            $("#slidertextdata").text('100GB Data');
                            $("#slidertextspeed").text('2Mbps Post FUP Speed');
                            $("#dslidertextprice").html('&#8377; 300');
                            $("#dslidertextdata").text('100GB Data');
                            $("#dslidertextspeed").text('2Mbps Post FUP Speed');
                        }
                    }

                });
    