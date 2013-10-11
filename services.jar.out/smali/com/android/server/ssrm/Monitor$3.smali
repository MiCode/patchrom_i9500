.class final Lcom/android/server/ssrm/Monitor$3;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1610
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private displayAllStates()V
    .locals 3

    .prologue
    .line 2069
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Battery Remaining : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Full:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nWifi Enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Wifi Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAirPlaneMode Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUsb Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBluetooth Enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Bluetooth Connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Saving Mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreen On"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2082
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is ! null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z
    .locals 4
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x1

    .line 2056
    const/4 v0, 0x0

    .line 2058
    .local v0, automicBrightness:Z
    :try_start_0
    const-string v3, "screen_brightness_mode"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 2065
    :cond_0
    :goto_0
    return v0

    .line 2058
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2060
    :catch_0
    move-exception v1

    .line 2061
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2062
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1620
    :try_start_0
    const-class v22, Lcom/android/server/ssrm/KfcControl;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1621
    const-class v22, Lcom/android/server/ssrm/GoogleNaviControl;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1622
    const-class v22, Lcom/android/server/ssrm/mDNLeOnOff;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1623
    const-class v22, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1624
    const-class v22, Lcom/android/server/ssrm/TurboModeOnOff;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1625
    const-class v22, Lcom/android/server/ssrm/ScreenMirroringBooster;

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1632
    :goto_0
    const-string v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1633
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    const-string v23, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    .line 1637
    const-string v22, "jf"

    const-string v23, "ja"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1638
    new-instance v22, Ljava/lang/Thread;

    new-instance v23, Lcom/android/server/ssrm/Monitor$3$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3$1;-><init>(Lcom/android/server/ssrm/Monitor$3;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 1671
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFile()V

    .line 1673
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_switch"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1675
    .local v16, powersavingState:I
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1676
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$3600(Z)V

    .line 2053
    .end local v16           #powersavingState:I
    :cond_1
    :goto_1
    return-void

    .line 1626
    :catch_0
    move-exception v9

    .line 1627
    .local v9, e1:Ljava/lang/InstantiationException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1628
    .end local v9           #e1:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v10

    .line 1629
    .local v10, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1685
    .end local v10           #e2:Ljava/lang/IllegalAccessException;
    :cond_2
    const-string v22, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1686
    const-string v22, "level"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    sput v22, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    .line 1688
    sget v22, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 1689
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    .line 1695
    :cond_3
    const-string v22, "status"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1697
    .local v6, battStatus:I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v6, v0, :cond_5

    .line 1698
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    .line 1711
    :cond_4
    :goto_2
    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1713
    .local v5, battPlugged:I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v5, v0, :cond_8

    .line 1714
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto :goto_1

    .line 1699
    .end local v5           #battPlugged:I
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v6, v0, :cond_6

    .line 1700
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_2

    .line 1701
    :cond_6
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v6, v0, :cond_7

    .line 1702
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    goto :goto_2

    .line 1703
    :cond_7
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v6, v0, :cond_4

    .line 1704
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_2

    .line 1716
    .restart local v5       #battPlugged:I
    :cond_8
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto/16 :goto_1

    .line 1724
    .end local v5           #battPlugged:I
    .end local v6           #battStatus:I
    :cond_9
    const-string v22, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1725
    const-string v22, "state"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1727
    .local v4, airplaneMode:Z
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 1728
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x3e8

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1729
    :cond_a
    if-eqz v4, :cond_b

    .line 1730
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_1

    .line 1733
    :cond_b
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_1

    .line 1742
    .end local v4           #airplaneMode:Z
    :cond_c
    const-string v22, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1743
    const-string v22, "wifi_state"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1745
    .local v21, wifiState:I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1746
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_1

    .line 1747
    :cond_d
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1748
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_1

    .line 1754
    .end local v21           #wifiState:I
    :cond_e
    const-string v22, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1755
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_1

    .line 1762
    :cond_f
    const-string v22, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1763
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_1

    .line 1765
    :cond_10
    const-string v22, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1766
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1767
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_11

    .line 1768
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    .line 1772
    :cond_11
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1774
    :cond_12
    const-string v22, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1775
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1776
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1778
    :cond_13
    const-string v22, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1779
    const-string v22, "1"

    const-string v23, "sys.multiwindow.running"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    .line 1780
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 1781
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_1

    .line 1787
    :cond_14
    const-string v22, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1788
    const-string v22, "android.bluetooth.adapter.extra.STATE"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1790
    .local v7, bluetoothState:I
    const/16 v22, 0xc

    move/from16 v0, v22

    if-ne v7, v0, :cond_15

    .line 1791
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 1792
    :cond_15
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v7, v0, :cond_16

    .line 1793
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    .line 1794
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1795
    :cond_16
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_17

    .line 1796
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1797
    :cond_17
    if-nez v7, :cond_1

    .line 1798
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1804
    .end local v7           #bluetoothState:I
    :cond_18
    const-string v22, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 1805
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "psm_switch"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1807
    .restart local v16       #powersavingState:I
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 1808
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$3600(Z)V

    goto/16 :goto_1

    .line 1810
    :cond_19
    const/16 v22, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$3600(Z)V

    goto/16 :goto_1

    .line 1816
    .end local v16           #powersavingState:I
    :cond_1a
    const-string v22, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 1818
    const-string v22, "SSRM_STATUS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1819
    .local v18, statusName:Ljava/lang/String;
    const-string v22, "SSRM_STATUS_VALUE"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 1820
    .local v19, statusValue:Z
    const-string v22, "PackageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1821
    .local v14, packageName:Ljava/lang/String;
    const-string v22, "PID"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1823
    .local v15, pid:I
    const-string v22, "FullScreen"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1824
    sput-boolean v19, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    .line 1825
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sget-boolean v23, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    .line 1826
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_1b

    .line 1827
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1829
    :cond_1b
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    .line 1833
    :cond_1c
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    if-eqz v18, :cond_1

    .line 1837
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  statusValue ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    if-lez v15, :cond_23

    .line 1842
    const-string v22, "Camera_preview"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string v22, "MoviePlayer_play"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string v22, "TMap_show"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string v22, "ChatOnV_vtCall"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string v22, "GroupPlay_fpsChange"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string v22, "Phone_vtCall"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 1848
    :cond_1d
    if-eqz v19, :cond_2a

    move/from16 v22, v15

    :goto_3
    sput v22, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    .line 1849
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_1e

    .line 1850
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1852
    :cond_1e
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$3802(Z)Z

    .line 1854
    :cond_1f
    const-string v22, "TMap_show"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 1855
    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/Monitor;->access$3902(Z)Z

    .line 1856
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 1858
    :cond_20
    const-string v22, "GoogleNavi_show"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 1859
    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/Monitor;->access$4002(Z)Z

    .line 1860
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    .line 1862
    :cond_21
    const-string v22, "GroupPlay_gpuLock"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_22

    const-string v22, "TMap_show"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 1863
    :cond_22
    #calls: Lcom/android/server/ssrm/Monitor;->applyGroupPlayGPULock(Z)V
    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/Monitor;->access$4100(Z)V

    .line 1867
    :cond_23
    const-string v22, "BrowserLowFps"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 1868
    sput-boolean v19, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 1869
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_24

    .line 1870
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1874
    :cond_24
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    if-eqz v22, :cond_27

    .line 1875
    const-string v22, "Camera_recording"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_25

    const-string v22, "Camera_recordingDual"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_25

    const-string v22, "ChatOnV_vtCall"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_25

    const-string v22, "Phone_vtCall"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 1879
    :cond_25
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4200()Z

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    .line 1880
    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/Monitor;->access$4202(Z)Z

    .line 1881
    const/16 v22, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    .line 1883
    :cond_26
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$3802(Z)Z

    .line 1887
    :cond_27
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    if-eqz v22, :cond_29

    .line 1888
    const-string v22, "Camera_panoramaShot"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28

    const-string v22, "Camera_dramaShot"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 1889
    :cond_28
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3800()Z

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    .line 1890
    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/Monitor;->access$3802(Z)Z

    .line 1891
    const/16 v22, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    .line 1896
    :cond_29
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    if-eqz v22, :cond_2b

    .line 1897
    const-string v22, "Browser_loading_URL"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 1898
    const-string v22, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1899
    .local v20, url:Ljava/lang/String;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    .line 1900
    const-string v22, "Browser_leaving_URL"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1902
    .local v11, isLeaving:Z
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4300()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v14, v15}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->handleURL(Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_1

    .line 1848
    .end local v11           #isLeaving:Z
    .end local v20           #url:Ljava/lang/String;
    :cond_2a
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1908
    :cond_2b
    if-eqz v19, :cond_2c

    .line 1909
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1910
    .local v13, msg:Landroid/os/Message;
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->what:I

    .line 1911
    const/16 v22, 0x3

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->arg2:I

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 1912
    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1913
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    const-wide/16 v23, 0xc8

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1922
    :goto_4
    const-string v22, "BenchmarkBooster"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 1923
    if-eqz v19, :cond_2d

    .line 1924
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Benchmark is working now. SIOP will not control CPU max freq any more."

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v22, "BenchmarkBooster"

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentSIOPTable(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$4400(Ljava/lang/String;)V

    .line 1927
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1915
    .end local v13           #msg:Landroid/os/Message;
    :cond_2c
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1916
    .restart local v13       #msg:Landroid/os/Message;
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->what:I

    .line 1917
    const/16 v22, 0x4

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->arg2:I

    move/from16 v0, v22

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 1918
    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1919
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 1929
    :cond_2d
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Benchmark is done now. SIOP will control CPU max freq again."

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v22, "default"

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentSIOPTable(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$4400(Ljava/lang/String;)V

    .line 1932
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1937
    :cond_2e
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_SCREEN_MIRRORING_BOOSTER:Z

    if-eqz v22, :cond_1

    const-string v22, "ScreenMirroringBooster"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1939
    #calls: Lcom/android/server/ssrm/Monitor;->initDVFSHelperMaxCpuFreq()V
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4500()V

    .line 1940
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()[I

    move-result-object v22

    if-eqz v22, :cond_1

    .line 1943
    if-eqz v19, :cond_2f

    .line 1944
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ScreenMirroringBooster is working now."

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4600()Landroid/os/DVFSHelper;

    move-result-object v22

    sget v23, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MIN_CPU_FREQ_FOR_SCREEN_MIRRORING:I

    invoke-virtual/range {v22 .. v23}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    #calls: Lcom/android/server/ssrm/Monitor;->insertMinCPUFreqRequirement(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->access$4700(Ljava/lang/String;I)V

    .line 1947
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1949
    :cond_2f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ScreenMirroringBooster is done now."

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    #calls: Lcom/android/server/ssrm/Monitor;->deleteMinCPUFreqRequirement(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ssrm/Monitor;->access$4800(Ljava/lang/String;)V

    .line 1951
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 1956
    .end local v13           #msg:Landroid/os/Message;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #pid:I
    .end local v18           #statusName:Ljava/lang/String;
    .end local v19           #statusValue:Z
    :cond_30
    const-string v22, "ResponseAxT9Info"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 1957
    #calls: Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V
    invoke-static/range {p2 .. p2}, Lcom/android/server/ssrm/Monitor;->access$4900(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1960
    :cond_31
    const-string v22, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_43

    .line 1961
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v22, :cond_32

    .line 1962
    invoke-static {}, Lcom/android/server/ssrm/TouchBusBooster;->getInstance()Lcom/android/server/ssrm/TouchBusBooster;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/TouchBusBooster;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1965
    :cond_32
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-nez v22, :cond_33

    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER:Z

    if-eqz v22, :cond_36

    .line 1967
    :cond_33
    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1968
    .restart local v14       #packageName:Ljava/lang/String;
    const-string v22, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1969
    .local v17, processState:Ljava/lang/String;
    const-string v22, "FOREGROUND"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 1970
    const-string v22, "com.sec.android.app.sbrowser"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_34

    const-string v22, "com.android.chrome"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 1971
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3;->isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1502(Z)Z

    .line 1972
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1602(Z)Z

    .line 1973
    sget-boolean v22, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER:Z

    if-eqz v22, :cond_35

    .line 1974
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$5002(Z)Z

    .line 1975
    :cond_35
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    .line 1989
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #processState:Ljava/lang/String;
    :cond_36
    :goto_5
    const-string v22, "FOREGROUND"

    const-string v23, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_42

    .line 1990
    const-string v22, "com.google.android.youtube"

    const-string v23, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_37

    const-string v22, "com.android.chrome"

    const-string v23, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 1991
    :cond_37
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 1992
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 1993
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 2003
    :goto_6
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sget-boolean v23, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_40

    .line 2004
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_38

    .line 2005
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 2007
    :cond_38
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    .line 2015
    :cond_39
    :goto_7
    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentForegroundPackageName(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$5100(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1977
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v17       #processState:Ljava/lang/String;
    :cond_3a
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1600()Z

    move-result v22

    if-nez v22, :cond_3b

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$5000()Z

    move-result v22

    if-eqz v22, :cond_36

    .line 1978
    :cond_3b
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1600()Z

    move-result v22

    if-eqz v22, :cond_3c

    .line 1979
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1602(Z)Z

    .line 1981
    :cond_3c
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$5000()Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 1982
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$5002(Z)Z

    .line 1984
    :cond_3d
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_5

    .line 1994
    .end local v14           #packageName:Ljava/lang/String;
    .end local v17           #processState:Ljava/lang/String;
    :cond_3e
    const-string v22, "com.sec.android.app.sbrowser"

    const-string v23, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3f

    .line 1995
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 1996
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    goto :goto_6

    .line 1998
    :cond_3f
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 1999
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 2000
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    goto :goto_6

    .line 2008
    :cond_40
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sget-boolean v23, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_39

    .line 2009
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    if-eqz v22, :cond_41

    .line 2010
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 2012
    :cond_41
    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sput-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    goto :goto_7

    .line 2016
    :cond_42
    const-string v22, "BACKGROUND"

    const-string v23, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2017
    const-string v22, "com.samsung.groupcast"

    const-string v23, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2018
    const-string v22, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2023
    :cond_43
    const-string v22, "android.intent.action.SECURE_PLAYBACK_START"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_44

    .line 2024
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2025
    .local v8, boostIntent:Landroid/content/Intent;
    const-string v22, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    const-string v22, "SSRM_STATUS_NAME"

    const-string v23, "SecurePlayback_play"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    const-string v22, "SSRM_STATUS_VALUE"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2028
    const-string v22, "PackageName"

    const-string v23, "android.av.media.libstagefright"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    const-string v22, "PID"

    const/16 v23, 0x100

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2030
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1400()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2033
    .end local v8           #boostIntent:Landroid/content/Intent;
    :cond_44
    const-string v22, "android.intent.action.SECURE_PLAYBACK_STOP"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_45

    .line 2034
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2035
    .restart local v8       #boostIntent:Landroid/content/Intent;
    const-string v22, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    const-string v22, "SSRM_STATUS_NAME"

    const-string v23, "SecurePlayback_play"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    const-string v22, "SSRM_STATUS_VALUE"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2038
    const-string v22, "PackageName"

    const-string v23, "android.av.media.libstagefright"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    const-string v22, "PID"

    const/16 v23, 0x100

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2040
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1400()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2043
    .end local v8           #boostIntent:Landroid/content/Intent;
    :cond_45
    const-string v22, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2044
    const-string v22, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 2045
    .local v12, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v22

    if-eqz v22, :cond_46

    .line 2046
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$5202(Z)Z

    .line 2050
    :goto_8
    const/16 v22, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    goto/16 :goto_1

    .line 2048
    :cond_46
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/ssrm/Monitor;->access$5202(Z)Z

    goto :goto_8
.end method
