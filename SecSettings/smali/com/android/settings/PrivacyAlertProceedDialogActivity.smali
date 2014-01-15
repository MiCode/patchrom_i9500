.class public Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CarrierLegalZipPath:Ljava/lang/String; = "/carrier/data/app/Settings/Customization_CarrierLegal.zip"

.field private static final TAG:Ljava/lang/String; = "PrivacyAlertProceedDialogActivity"


# instance fields
.field private CarrierLegalEnPath:Ljava/lang/String;

.field private CarrierLegalEnURL:Ljava/lang/String;

.field private CarrierLegalEsPath:Ljava/lang/String;

.field private CarrierLegalEsURL:Ljava/lang/String;

.field private CarrierLegalKoPath:Ljava/lang/String;

.field private CarrierLegalKoURL:Ljava/lang/String;

.field private CarrierLegalViPath:Ljava/lang/String;

.field private CarrierLegalViURL:Ljava/lang/String;

.field private CarrierLegalZhPath:Ljava/lang/String;

.field private CarrierLegalZhURL:Ljava/lang/String;

.field bFileExist:Ljava/lang/Boolean;

.field bTest:Ljava/lang/Boolean;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 53
    const-string v0, "/carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 54
    const-string v0, "/carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 55
    const-string v0, "/carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 56
    const-string v0, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 57
    const-string v0, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 60
    const-string v0, "file:///carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 61
    const-string v0, "file:///carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 62
    const-string v0, "file:///carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 63
    const-string v0, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 64
    const-string v0, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f091030

    const/4 v10, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040030

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 89
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b0078

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    .line 93
    const-string v5, ""

    .line 95
    .local v5, sales_code:Ljava/lang/String;
    :try_start_0
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    const-string v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 102
    :cond_0
    :goto_0
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "createView : "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 105
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "TAG_CSCFEATURE_COMMON_USECHAMELEON : true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 107
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, currentLang:Ljava/lang/String;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentLang : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    const-string v7, "/mnt/sdcard/Download/privacy_en.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 111
    const-string v7, "/mnt/sdcard/Download/privacy_es.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 112
    const-string v7, "/mnt/sdcard/Download/privacy_ko.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 113
    const-string v7, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 114
    const-string v7, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 116
    const-string v7, "file:///mnt/sdcard/Download/privacy_en.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 117
    const-string v7, "file:///mnt/sdcard/Download/privacy_es.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 118
    const-string v7, "file:///mnt/sdcard/Download/privacy_ko.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 119
    const-string v7, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 120
    const-string v7, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 122
    :cond_1
    const-string v7, "es"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 123
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 174
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #mfile:Ljava/io/File;
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_f

    .line 175
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bFileExist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v7, "SPR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09102e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09102f

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f091031

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v6           #view:Landroid/view/View;
    :goto_2
    return-object v6

    .line 99
    .restart local v6       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    const-string v8, "Reading failed for sales code"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #mfile:Ljava/io/File;
    :cond_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 131
    .end local v4           #mfile:Ljava/io/File;
    :cond_3
    const-string v7, "ko"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v4       #mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 135
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 138
    :cond_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 140
    .end local v4           #mfile:Ljava/io/File;
    :cond_5
    const-string v7, "vi"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 141
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v4       #mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists3 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 144
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :cond_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 149
    .end local v4           #mfile:Ljava/io/File;
    :cond_7
    const-string v7, "zh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 150
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v4       #mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists4 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 153
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :cond_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 159
    .end local v4           #mfile:Ljava/io/File;
    :cond_9
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v4       #mfile:Ljava/io/File;
    const-string v7, "PrivacyAlertProceedDialogActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File exists5 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 162
    iget-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_a
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 169
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #mfile:Ljava/io/File;
    :cond_b
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 178
    :cond_c
    const-string v7, "BST"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f091036

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f091037

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f091038

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 180
    :cond_d
    const-string v7, "VMU"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09103a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09103b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09103c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f09103d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 183
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f091032

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f091033

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f091034

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 186
    :cond_f
    iget-object v6, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    packed-switch p2, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 77
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f09102a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 83
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 199
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 203
    return-void
.end method
