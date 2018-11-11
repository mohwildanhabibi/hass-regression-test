@echo off
set BATCH_NAME=back_home
start /B networkstatus
wait -t img -vlp 1.png(TM(ccoeffnormed,0.95)) 60
@if %ERRORLEVEL%==0 (echo Success) else goto fail
mouseoperation click 1.png(TM(ccoeffnormed,0.95))
@if %ERRORLEVEL%==0 (echo Success) else goto fail
wait -t img -vlp asert1.png(TM(ccoeffnormed,0.95)) 60
assert -t bgimg -vlp asert1.png(TM(ccoeffnormed,0.95)) -a n:1:t
@if %ERRORLEVEL%==0 (echo Success) else goto fail
:end
@taskkill /f /im networkstatus.exe
echo END_TEST_CASE
goto :eof
:fail
echo Fail
goto end
