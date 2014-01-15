.class final Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;
.super Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 339
    packed-switch p0, :pswitch_data_0

    .line 349
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 341
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 347
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 289
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 290
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 327
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, wifiState:I
    invoke-static {v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 298
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 300
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 301
    const-string v1, "ConnectivityLocationWidgetProvider"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v1, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
