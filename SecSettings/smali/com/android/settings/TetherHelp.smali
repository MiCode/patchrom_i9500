.class public Lcom/android/settings_ex/TetherHelp;
.super Landroid/app/Activity;
.source "TetherHelp.java"


# static fields
.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final USB_BLUETOOTH_HELP_MODIFIER:Ljava/lang/String; = "usb_bluetooth_"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_WIFI_HELP_MODIFIER:Ljava/lang/String; = "usb_wifi_"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getHelpUrl(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 16
    .parameter "cm"

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, mUsbRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, mWifiRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, mBluetoothRegexs:[Ljava/lang/String;
    array-length v13, v6

    if-eqz v13, :cond_2

    const/4 v10, 0x1

    .line 66
    .local v10, usbAvailable:Z
    :goto_0
    array-length v13, v7

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    .line 68
    .local v12, wifiAvailable:Z
    :goto_1
    array-length v13, v5

    if-eqz v13, :cond_4

    const/4 v1, 0x1

    .line 72
    .local v1, bluetoothAvailable:Z
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 75
    .local v4, locale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 76
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v13, "html/%y%z/tethering_help.html"

    const-string v14, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, path:Ljava/lang/String;
    const-string v13, "%z"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 78
    const/4 v11, 0x1

    .line 79
    .local v11, useCountry:Z
    const/4 v3, 0x0

    .line 81
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    if-eqz v3, :cond_0

    .line 87
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    :cond_0
    :goto_3
    const-string v13, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v14, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, url:Ljava/lang/String;
    const-string v14, "%z"

    if-eqz v11, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 93
    array-length v13, v6

    if-eqz v13, :cond_7

    array-length v13, v7

    if-eqz v13, :cond_1

    if-nez v12, :cond_7

    :cond_1
    array-length v13, v5

    if-nez v13, :cond_7

    .line 94
    const-string v13, "%x"

    const-string v14, "usb_"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 111
    :goto_5
    return-object v9

    .line 65
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v1           #bluetoothAvailable:Z
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    .end local v10           #usbAvailable:Z
    .end local v11           #useCountry:Z
    .end local v12           #wifiAvailable:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 66
    .restart local v10       #usbAvailable:Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 68
    .restart local v12       #wifiAvailable:Z
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 82
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v1       #bluetoothAvailable:Z
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v8       #path:Ljava/lang/String;
    .restart local v11       #useCountry:Z
    :catch_0
    move-exception v2

    .line 83
    .local v2, ignored:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 85
    if-eqz v3, :cond_0

    .line 87
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 88
    :catch_1
    move-exception v13

    goto :goto_3

    .line 85
    .end local v2           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-eqz v3, :cond_5

    .line 87
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 88
    :cond_5
    :goto_6
    throw v13

    .line 92
    .restart local v9       #url:Ljava/lang/String;
    :cond_6
    const-string v13, ""

    goto :goto_4

    .line 95
    :cond_7
    array-length v13, v7

    if-eqz v13, :cond_8

    if-eqz v12, :cond_8

    array-length v13, v6

    if-nez v13, :cond_8

    .line 96
    const-string v13, "%x"

    const-string v14, "wifi_"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 98
    :cond_8
    array-length v13, v5

    if-nez v13, :cond_9

    if-eqz v12, :cond_9

    .line 99
    const-string v13, "%x"

    const-string v14, "usb_wifi_"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 102
    :cond_9
    if-nez v12, :cond_a

    .line 103
    const-string v13, "%x"

    const-string v14, "usb_bluetooth_"

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 107
    :cond_a
    const-string v13, "%x"

    const-string v14, ""

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 88
    .end local v9           #url:Ljava/lang/String;
    :catch_2
    move-exception v13

    goto/16 :goto_3

    :catch_3
    move-exception v14

    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f040137

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 52
    .local v1, cm:Landroid/net/ConnectivityManager;
    const v2, 0x7f0b038f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/settings_ex/TetherHelp;->webView:Landroid/webkit/WebView;

    .line 53
    iget-object v2, p0, Lcom/android/settings_ex/TetherHelp;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherHelp;->getHelpUrl(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
