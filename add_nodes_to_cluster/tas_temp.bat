@echo off
set BATCH_NAME=add_nodes_to_cluster
start /B networkstatus
wait -t img -vlp 1.png(TM(ccoeffnormed,0.95)) 60
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 1.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 2.png(TM(ccoeffnormed,0.95)) 6
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 2.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 3.png(TM(ccoeffnormed,0.95)) 60
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 3.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 4.png(TM(ccoeffnormed,0.95)) 60
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 4.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 5.png(TM(ccoeffnormed,0.95)) 6
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 5.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp assert.png(TM(ccoeffnormed,0.95)) 6
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click assert.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 5.png(TM(ccoeffnormed,0.95)) 6
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 5.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 6.png(TM(ccoeffnormed,0.95)) 6
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 6.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp assert.png(TM(ccoeffnormed,0.95)) 60
assert -t bgimg -vlp assert.png(TM(ccoeffnormed,0.95)) -a n:1:t
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp assert1.png(TM(ccoeffnormed,0.95)) 60
assert -t bgimg -vlp assert1.png(TM(ccoeffnormed,0.95)) -a n:1:t
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp 7.png(TM(ccoeffnormed,0.95)) 3
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 7.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp home.PNG(TM(ccoeffnormed,0.95)) 60
assert -t bgimg -vlp home.PNG(TM(ccoeffnormed,0.95)) -a n:1:t
@if %ERRORLEVEL%==0 (echo Success) else goto fail
:end
@taskkill /f /im networkstatus.exe
echo END_TEST_CASE
goto :eof
:fail
echo Fail
goto end
