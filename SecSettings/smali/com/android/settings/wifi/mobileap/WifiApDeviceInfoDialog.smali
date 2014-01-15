.class public Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0
    .parameter "context"
    .parameter "device"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .line 41
    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 72
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 73
    .local v0, hour:J
    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    .line 74
    .local v2, hour_rest:J
    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    .line 75
    .local v4, min:J
    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    .line 77
    .local v6, sec:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040160

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 50
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const v3, 0x7f0b041b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v3, 0x7f0b041c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HH:mm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, connDateTime:Ljava/text/SimpleDateFormat;
    const v3, 0x7f0b041d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v3, 0x7f0b041e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v7

    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090699

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
