*** Settings ***
Library    AppiumLibrary

*** Variables ***

# WorkShop Mobile With Appium 

${RemoteURL}                       http://localhost:4723/wd/hub
${PlatformName}                    Android
${PlatformVersion}                 12.0
${DeviceName}                      emulator-5554
${appPackage}                      com.android.settings
${appActivity}                     com.android.settings.Settings
${locator_Search}                  id=com.android.settings:id/search_action_bar
${locator_Field-Search}            id=com.google.android.settings.intelligence:id/open_search_view_edit_text
${locator_Select_Network}          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.LinearLayout
${locator_Select_Airplane-mode}    id=android:id/switch_widget
${locator_btn-Back}                xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
${locator_btn-Back2Sttting}        xpath=//android.widget.ImageButton[@content-desc="Back"]
${locator_Sitting}                 id=com.android.settings:id/homepage_title

${locator_Battery}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[5]/android.widget.RelativeLayout
${locator_Switch-On-Off-Battery}   id=android:id/switch_widget
${locator_System}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.RelativeLayout
${locator_Languages-input}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout
${locator_Menu_Add-Language}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button
${locator_SearchLanguage}          id=android:id/locale_search_menu
${locator_Search-Text}             id=android:id/search_src_text
${locator_Select-Thai}             xpath=//android.widget.TextView[@content-desc="Thai"]
${locator_Show-Thai-Language}      xpath=//android.widget.TextView[@content-desc="Thai (Thailand)"]
${locator_Menu_Remove}             xpath=//android.widget.ImageButton[@content-desc="More options"]
${locator_Select-Remove}           id=android:id/content
${locator_Check-Thai-Remove}       xpath=//android.widget.CheckBox[@content-desc="Thai (Thailand)"]
${locator_Remove}                  xpath=//android.widget.TextView[@content-desc="Remove"]
${locator_Confirm-Remove}          id=android:id/button1