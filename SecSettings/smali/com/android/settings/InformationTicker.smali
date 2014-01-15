.class public Lcom/android/settings_ex/InformationTicker;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CAMOBILE_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_CURRENT_STOCK_DATA:Ljava/lang/String; = "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

.field public static final ACTION_FACEBOOK_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.facebook.action.SERVICE_ON_OFF"

.field public static final ACTION_SNNEWS_DEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_WEIBO_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.sinaweibo.action.SERVICE_ON_OFF"

.field public static final ACTION_YHNEWS_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_YONHAPNEWS_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

.field private static final FB_FALLBACK_REQUEST:I = 0x65

.field public static final FB_NOTI_CHARGES_SHARED_PREFS:Ljava/lang/String; = "com.android.settings_ex.fb_noti_of_charges"

.field public static final KEY_CAMOBILE_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_app_service_status"

.field private static final KEY_CONTENTS_TYPE:Ljava/lang/String; = "contents_type"

.field private static final KEY_FACEBOOK:Ljava/lang/String; = "Facebook"

.field private static final KEY_FACEBOOK_AUTO_REFRESH:Ljava/lang/String; = "facebook_auto_refresh"

.field public static final KEY_FACEBOOK_SERVICE_STATUS:Ljava/lang/String; = "facebook_daemon_service_key_app_service_status"

.field public static final KEY_FB_NOTI_DO_NOT_SHOW:Ljava/lang/String; = "FBDoNotShowDialog"

.field private static final KEY_SLIDING_SPEED:Ljava/lang/String; = "sliding_speed"

.field public static final KEY_SNNW_SERVICE_STATUS:Ljava/lang/String; = "sn_daemon_service_key_app_service_status"

.field public static final KEY_STOCK_SERVICE_STATUS:Ljava/lang/String; = "stockclock_daemon_service_key_app_service_status"

.field private static final KEY_TICKER_SETTINGS:Ljava/lang/String; = "ticker_settings"

.field public static final KEY_WEIBO_SERVICE_STATUS:Ljava/lang/String; = "weibo_daemon_service_key_app_service_status"

.field public static final KEY_YAHOONW_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_app_service_status"

.field public static final KEY_YONHAPNW_SERVICE_STATUS:Ljava/lang/String; = "yonhap_daemon_service_key_app_service_status"

.field public static final LOCK_SCREEN_SERVICE_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InformationTicker"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mContentsTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookAutoRefresh:Landroid/preference/ListPreference;

.field private mNotiOfChargeDialog:Landroid/app/AlertDialog;

.field private mOldValue:I

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 590
    xor-int/lit8 p0, p0, 0x1

    .line 591
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 585
    or-int/lit8 p0, p0, 0x1

    .line 586
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/InformationTicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings_ex/InformationTicker;->mOldValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/InformationTicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/InformationTicker;->sendContentsType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/InformationTicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/InformationTicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/InformationTicker;->saveFBAutoRefreshRate(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/InformationTicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateFacebookState()V

    return-void
.end method

.method private getEnableContentsType()V
    .locals 8

    .prologue
    .line 678
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, ContentsTypeFeature:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 681
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    .line 682
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, contentsType:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 684
    .local v2, contentsSequence:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 685
    .local v4, found:Z
    const/4 v1, 0x0

    .local v1, charindex:I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_3

    .line 686
    const/4 v4, 0x0

    .line 687
    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 688
    aget-object v6, v3, v5

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 689
    const/4 v4, 0x1

    .line 693
    :cond_0
    if-nez v4, :cond_1

    .line 694
    iget-object v6, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 697
    .end local v1           #charindex:I
    .end local v2           #contentsSequence:[Ljava/lang/CharSequence;
    .end local v3           #contentsType:[Ljava/lang/String;
    .end local v4           #found:Z
    .end local v5           #index:I
    :cond_3
    return-void
.end method

.method private saveFBAutoRefreshRate(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "information_ticker_auto_refresh"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 746
    const-string v0, "InformationTicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFacebookAutoRefresh.getEntry() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 748
    invoke-direct {p0, p1}, Lcom/android/settings_ex/InformationTicker;->sendAutoRefreshRate(I)V

    .line 749
    return-void
.end method

.method private sendAutoRefreshRate(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 623
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.SinaweiboRefreshRateChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, i:Landroid/content/Intent;
    :goto_0
    const-string v1, "RefreshRate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v1, "InformationTicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast auto refresh rate about information ticker for FB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    return-void

    .line 626
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.FacebookRefreshRateChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #i:Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendContentsType(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 638
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.SinaweiboContentsTypeChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, i:Landroid/content/Intent;
    :goto_0
    const-string v1, "ContentsType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v1, "InformationTicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast contents type for information ticker for FB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    return-void

    .line 641
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.FacebookContentsTypeChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #i:Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 654
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "weibo_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v0

    .line 660
    .local v0, appServiceStatus:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "weibo_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.sinaweibo.action.SERVICE_ON_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v1, intent_fb:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    return-void

    .line 658
    .end local v0           #appServiceStatus:I
    .end local v1           #intent_fb:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "weibo_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v0

    .restart local v0       #appServiceStatus:I
    goto :goto_0

    .line 664
    .end local v0           #appServiceStatus:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "facebook_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v0

    .line 669
    .restart local v0       #appServiceStatus:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "facebook_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.facebook.action.SERVICE_ON_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent_fb:Landroid/content/Intent;
    goto :goto_1

    .line 667
    .end local v0           #appServiceStatus:I
    .end local v1           #intent_fb:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "facebook_daemon_service_key_app_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v0

    .restart local v0       #appServiceStatus:I
    goto :goto_2
.end method

.method private showNotiOfChargesDialog(I)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f090047

    const/4 v6, 0x0

    .line 701
    move v3, p1

    .line 703
    .local v3, value:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 704
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 705
    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 706
    iput-object v6, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 710
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040061

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 712
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 713
    const v4, 0x7f090b6b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 714
    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 716
    new-instance v4, Lcom/android/settings_ex/InformationTicker$5;

    invoke-direct {v4, p0, v3}, Lcom/android/settings_ex/InformationTicker$5;-><init>(Lcom/android/settings_ex/InformationTicker;I)V

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 721
    const v4, 0x7f090048

    new-instance v5, Lcom/android/settings_ex/InformationTicker$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/InformationTicker$6;-><init>(Lcom/android/settings_ex/InformationTicker;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    .line 728
    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 730
    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mNotiOfChargeDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/InformationTicker$7;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/InformationTicker$7;-><init>(Lcom/android/settings_ex/InformationTicker;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 741
    return-void
.end method

.method private updateFacebookState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 599
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 600
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "contents_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 602
    .local v1, contentsType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 607
    const-string v3, "information_ticker_auto_refresh"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 608
    .local v0, autoFreshVal:I
    const-string v3, "InformationTicker"

    const-string v4, "updateFacebookState() : contentsType is facebook. mFacebookAutoRefresh is removed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v3, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    .end local v0           #autoFreshVal:I
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 615
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 369
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 370
    .local v0, contentsType:I
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 371
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 372
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 376
    .local v3, slidingSpeed:I
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 377
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    const/4 v4, 0x0

    .line 380
    .local v4, summary:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 381
    const v7, 0x7f090b64

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 396
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateFacebookState()V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v2, v5

    .line 401
    .local v2, saved_value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 403
    if-eqz v2, :cond_a

    .line 404
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_1

    .line 405
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 406
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    .line 408
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 409
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 410
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 422
    iget-object v5, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 423
    :cond_4
    return-void

    .line 382
    .end local v2           #saved_value:Z
    :cond_5
    if-ne v0, v5, :cond_6

    .line 383
    const v7, 0x7f090b65

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 385
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 386
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 387
    const v7, 0x7f090b6e

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 389
    :cond_7
    const v7, 0x7f090b66

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 392
    :cond_8
    const-string v7, "InformationTicker"

    const-string v8, "contentsType is out of bound"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    move v2, v6

    .line 400
    goto :goto_1

    .line 412
    .restart local v2       #saved_value:Z
    :cond_a
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_b

    .line 413
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 414
    :cond_b
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 415
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_c

    .line 416
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 417
    :cond_c
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 418
    iget-object v7, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    .line 202
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 203
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 204
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 210
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090b5c

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 218
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 753
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 754
    const-string v2, "InformationTicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult : requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 758
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.facebook.katana"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 759
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    iget v4, p0, Lcom/android/settings_ex/InformationTicker;->mOldValue:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 761
    iget v2, p0, Lcom/android/settings_ex/InformationTicker;->mOldValue:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/InformationTicker;->sendContentsType(I)V

    .line 762
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateState()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 224
    const-string v9, "InformationTicker"

    const-string v10, "onCheckChanged"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 231
    .local v8, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 232
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 237
    .local v5, mAppServiceStatus:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 244
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    :goto_2
    invoke-direct {p0, v8}, Lcom/android/settings_ex/InformationTicker;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "information_ticker"

    if-eqz p2, :cond_b

    const/4 v9, 0x1

    :goto_3
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    if-eqz p2, :cond_c

    .line 313
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v9, :cond_0

    .line 314
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 317
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    .line 318
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    :cond_1
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    if-eqz p2, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 328
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 333
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v9, "com.facebook.katana"

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_5
    return-void

    .line 235
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto/16 :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    goto/16 :goto_1

    .line 250
    .end local v5           #mAppServiceStatus:I
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 251
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 256
    .restart local v5       #mAppServiceStatus:I
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 263
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v2       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 254
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_6

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    goto :goto_7

    .line 287
    .end local v5           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 292
    .restart local v5       #mAppServiceStatus:I
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOn(I)I

    move-result v5

    .line 299
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v2       #intent_nw:Landroid/content/Intent;
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, salesCode:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 290
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v7           #salesCode:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_8

    .line 297
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings_ex/InformationTicker;->AppServiceOff(I)I

    move-result v5

    goto :goto_9

    .line 310
    .restart local v2       #intent_nw:Landroid/content/Intent;
    .restart local v3       #intent_st:Landroid/content/Intent;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 320
    :cond_c
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v9, :cond_d

    .line 321
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    :cond_d
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 324
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    .line 325
    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 334
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "InformationTicker"

    const-string v10, "[NameNotFoundException] facebook was not installed !!!!!"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v4, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f090b67

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 338
    const v9, 0x7f090b68

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 339
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings_ex/InformationTicker$1;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/InformationTicker$1;-><init>(Lcom/android/settings_ex/InformationTicker;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    const/high16 v9, 0x104

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 119
    const-string v0, "contents_type"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CMCC"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_1
    const-string v0, "sliding_speed"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v0, "ticker_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    .line 133
    const-string v0, "facebook_auto_refresh"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->getEnableContentsType()V

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 364
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, key:Ljava/lang/String;
    const-string v8, "contents_type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 483
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 484
    .local v7, value:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "contents_type"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/InformationTicker;->mOldValue:I

    .line 486
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "contents_type"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    invoke-direct {p0, v7}, Lcom/android/settings_ex/InformationTicker;->sendContentsType(I)V

    .line 489
    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 490
    const-string v8, "InformationTicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mContentsType.getEntry() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    const/4 v6, 0x0

    .line 494
    .local v6, summary:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 495
    const v8, 0x7f090b64

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 510
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateFacebookState()V

    .line 513
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 516
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v8

    if-nez v8, :cond_0

    .line 518
    :try_start_0
    const-string v8, "com.facebook.katana"

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #summary:Ljava/lang/String;
    .end local v7           #value:I
    :cond_0
    :goto_1
    const/4 v8, 0x1

    :goto_2
    return v8

    .line 496
    .restart local v6       #summary:Ljava/lang/String;
    .restart local v7       #value:I
    :cond_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 497
    const v8, 0x7f090b65

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 499
    :cond_2
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 500
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 501
    const v8, 0x7f090b6e

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 503
    :cond_3
    const v8, 0x7f090b66

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 506
    :cond_4
    const-string v8, "InformationTicker"

    const-string v9, "objValue is out of bound"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 520
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "InformationTicker"

    const-string v9, "[NameNotFoundException] facebook was not installed !!!!!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .local v4, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f090b67

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 523
    const v8, 0x7f090b68

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 524
    const v8, 0x104000a

    new-instance v9, Lcom/android/settings_ex/InformationTicker$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/InformationTicker$2;-><init>(Lcom/android/settings_ex/InformationTicker;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    const/high16 v8, 0x104

    new-instance v9, Lcom/android/settings_ex/InformationTicker$3;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/InformationTicker$3;-><init>(Lcom/android/settings_ex/InformationTicker;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    new-instance v8, Lcom/android/settings_ex/InformationTicker$4;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/InformationTicker$4;-><init>(Lcom/android/settings_ex/InformationTicker;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 554
    const/4 v8, 0x0

    goto :goto_2

    .line 558
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #summary:Ljava/lang/String;
    .end local v7           #value:I
    .restart local p2
    :cond_5
    const-string v8, "sliding_speed"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 559
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 560
    .restart local v7       #value:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sliding_speed"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 562
    const-string v8, "InformationTicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v8, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings_ex/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 564
    .end local v7           #value:I
    .restart local p2
    :cond_6
    const-string v8, "facebook_auto_refresh"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.settings_ex.fb_noti_of_charges"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 566
    .local v2, fbNotiChargesPrefs:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 567
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 568
    .restart local v7       #value:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 570
    invoke-direct {p0, v7}, Lcom/android/settings_ex/InformationTicker;->saveFBAutoRefreshRate(I)V

    goto/16 :goto_1

    .line 572
    :cond_8
    const-string v8, "FBDoNotShowDialog"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 573
    .local v0, doNotShow:Z
    if-eqz v0, :cond_9

    .line 574
    invoke-direct {p0, v7}, Lcom/android/settings_ex/InformationTicker;->saveFBAutoRefreshRate(I)V

    goto/16 :goto_1

    .line 576
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/settings_ex/InformationTicker;->showNotiOfChargesDialog(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 427
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ticker_settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 429
    .local v1, contentType:I
    if-nez v1, :cond_3

    .line 433
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v6, "SETTING_MODE"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 439
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, salesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 444
    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 445
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const-string v7, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v0, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #contentType:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #salesCode:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 446
    .restart local v1       #contentType:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #salesCode:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 448
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v7, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 450
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_2
    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 451
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v7, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 455
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v5           #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 456
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InformationTicker"

    const-string v7, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    if-ne v1, v9, :cond_6

    .line 460
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 461
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 462
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 463
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 465
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 469
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    if-ne v1, v10, :cond_7

    .line 470
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "goto facebook settings"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 472
    :cond_7
    const-string v6, "InformationTicker"

    const-string v7, "contentsType is out of bound"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ex/InformationTicker;->updateState()V

    .line 359
    return-void
.end method
