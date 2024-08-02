*** Settings ***
Library    SeleniumLibrary
Library    ExcelRobot

*** Variables ***

${pathExcel}                      ${CURDIR}/DataSearch.xls
${SheetNameExcel}                 List_song
${Url}                    https://www.arealme.com/colors/th/
${Browser}                        gc
${locator_Search}                 name=search_query
${locator_Search-btn}             id=search-icon-legacy
${locator_Result-Search}          xpath=//*[@id="video-title"]/yt-formatted-string
${locator_PlayVDO}                xpath=//*[@id="movie_player"]/div[1]/video
${locator_Menu}                   xpath=//*[@id="guide-icon"]/yt-icon-shape/icon-shape/div
${locator_History}                xpath=/html/body/ytd-app/div[1]/tp-yt-app-drawer/div[2]/div/div[2]/div[2]/ytd-guide-renderer/div[1]/ytd-guide-section-renderer[2]/div/ytd-guide-entry-renderer[2]

