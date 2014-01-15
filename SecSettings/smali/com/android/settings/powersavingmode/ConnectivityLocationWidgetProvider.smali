.class public Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;,
        Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x2

.field private static final BUTTON_DATA:I = 0x3

.field private static final BUTTON_GPS:I = 0x4

.field private static final BUTTON_OFF:I = 0x0

.field private static final BUTTON_SYNC:I = 0x5

.field private static final BUTTON_WIFI:I = 0x1

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "ConnectivityLocationWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static isConnectivityModeOn:I

.field private static isSimStatusOff:I

.field private static mContext:Landroid/content/Context;

.field private static final sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private static final sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;


# instance fields
.field private mDataObserver:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 74
    sput-object v3, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 104
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 108
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 110
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 112
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 114
    sput v4, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 116
    sput v4, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 118
    sput v4, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 122
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    .line 68
    return-void
.end method

.method static synthetic access$600()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-object p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 631
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040033

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 633
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b007a

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 635
    const v1, 0x7f0b007d

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 637
    const v1, 0x7f0b0081

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 639
    const v1, 0x7f0b0085

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 641
    const v1, 0x7f0b0089

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 643
    const v1, 0x7f0b008d

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 646
    invoke-static {v0, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 647
    return-object v0
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 964
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 966
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1041
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1056
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1023
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1024
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 844
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 846
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 847
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getOffState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 1067
    sget-object v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    .line 1068
    .local v4, wifiState:I
    sget-object v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1069
    .local v0, btState:I
    sget-object v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 1070
    .local v1, dataState:I
    sget-object v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    .line 1071
    .local v3, syncState:I
    sget-object v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    .line 1076
    .local v2, gpsState:I
    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-ne v1, v5, :cond_0

    sget v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v6, :cond_0

    sget v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-eqz v6, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v2, v5, :cond_2

    .line 1082
    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 976
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 977
    .local v0, sync:Z
    return v0
.end method

.method private mobileDataOffAlert(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1119
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1121
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f0400b9

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1124
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0b0209

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1126
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09091c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1142
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1143
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$2;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$3;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1154
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1157
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1158
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1159
    return-void
.end method

.method private simInsertAlert(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1176
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0909aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1177
    const v2, 0x7f0909ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1179
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$5;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1185
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1186
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1187
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1188
    return-void
.end method

.method private toggleSync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 986
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 988
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 1009
    .local v1, sync:Z
    if-nez v1, :cond_0

    .line 1010
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method

.method private toogleOffMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1086
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1088
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1090
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 1091
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 1093
    .local v3, sync:Z
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1094
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1095
    :cond_0
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1097
    :cond_1
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1098
    :cond_2
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1100
    :cond_3
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1101
    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v5, :cond_4

    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-nez v5, :cond_4

    .line 1102
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1105
    :cond_4
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 1106
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1108
    :cond_5
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1109
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1111
    new-instance v2, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v2, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1116
    .end local v2           #intent_widget:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f02033a

    const v6, 0x7f0d0026

    const v5, 0x7f020337

    const/4 v4, 0x0

    const v3, 0x7f0d0027

    .line 671
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 672
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 673
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 674
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 675
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 677
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 709
    :pswitch_0
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : WiFi state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    const v0, 0x7f0b008e

    const v1, 0x7f020344

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 715
    const v0, 0x7f0b008f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 716
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 722
    :goto_1
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    const v0, 0x7f0b008a

    const v1, 0x7f020342

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 724
    const v0, 0x7f0b008b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 725
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 731
    :goto_2
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 732
    const v0, 0x7f0b007b

    const v1, 0x7f020346

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 733
    const v0, 0x7f0b007c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 738
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 740
    sput v4, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 770
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_6

    .line 772
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    .line 778
    :goto_4
    sget v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 779
    :cond_1
    const v0, 0x7f0b0086

    const v1, 0x7f02033f

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 780
    const v0, 0x7f0b0087

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 781
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 794
    :goto_5
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 827
    :pswitch_1
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : BT state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_6
    return-void

    .line 679
    :pswitch_2
    const v0, 0x7f0b007e

    const v1, 0x7f020347

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 680
    const v0, 0x7f0b007f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 682
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 685
    :pswitch_3
    const v0, 0x7f0b007e

    const v1, 0x7f020348

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 686
    const v0, 0x7f0b007f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 688
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 696
    :pswitch_4
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    const v0, 0x7f0b007e

    const v1, 0x7f02025c

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 698
    const v0, 0x7f0b007f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 700
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 702
    :cond_2
    const v0, 0x7f0b007e

    const v1, 0x7f02025b

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 703
    const v0, 0x7f0b007f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 705
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 718
    :cond_3
    const v0, 0x7f0b008e

    const v1, 0x7f020343

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 719
    const v0, 0x7f0b008f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 720
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 727
    :cond_4
    const v0, 0x7f0b008a

    const v1, 0x7f020341

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 728
    const v0, 0x7f0b008b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 729
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 735
    :cond_5
    const v0, 0x7f0b007b

    const v1, 0x7f020345

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 736
    const v0, 0x7f0b007c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 774
    :cond_6
    sput v4, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    goto/16 :goto_4

    .line 783
    :cond_7
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 784
    const v0, 0x7f0b0086

    const v1, 0x7f020340

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 785
    const v0, 0x7f0b0087

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 786
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 788
    :cond_8
    const v0, 0x7f0b0086

    const v1, 0x7f02033f

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 789
    const v0, 0x7f0b0087

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 790
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 796
    :pswitch_5
    const v0, 0x7f0b0082

    const v1, 0x7f02033d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 797
    const v0, 0x7f0b0083

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 799
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 802
    :pswitch_6
    const v0, 0x7f0b0082

    const v1, 0x7f02033e

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 803
    const v0, 0x7f0b0083

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 805
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 813
    :pswitch_7
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    const v0, 0x7f0b0082

    const v1, 0x7f02033e

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 815
    const v0, 0x7f0b0083

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 817
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 819
    :cond_9
    const v0, 0x7f0b0082

    const v1, 0x7f02033d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 821
    const v0, 0x7f0b0083

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 823
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 794
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 656
    invoke-static {p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 659
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 660
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 661
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 625
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 613
    sget-object v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 619
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 858
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, action:Ljava/lang/String;
    const-string v5, "ConnectivityLocationWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 862
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 954
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 955
    :cond_1
    return-void

    .line 863
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 864
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 865
    :cond_3
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 866
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 876
    :cond_4
    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 878
    :cond_5
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 880
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 883
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 884
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 885
    :cond_7
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 886
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 887
    :cond_8
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 888
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 889
    :cond_9
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 890
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 891
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 893
    .local v1, buttonId:I
    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    if-nez v5, :cond_0

    .line 894
    if-nez v1, :cond_a

    .line 895
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->toogleOffMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 896
    :cond_a
    if-ne v1, v9, :cond_d

    .line 897
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CMCC"

    const-string v6, "OPEN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_c

    .line 900
    const v5, 0x7f090297

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 903
    :cond_c
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 905
    :cond_d
    const/4 v5, 0x2

    if-ne v1, v5, :cond_e

    .line 907
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 908
    :cond_e
    const/4 v5, 0x3

    if-ne v1, v5, :cond_13

    .line 909
    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-eq v5, v9, :cond_f

    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-ne v5, v9, :cond_11

    .line 910
    :cond_f
    sget v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_10

    .line 911
    const v5, 0x7f09118a

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 914
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->simInsertAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 917
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quickpanel_mobiledata_checked"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 919
    .local v4, mChecked:I
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_12

    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    .line 920
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 923
    :cond_12
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 926
    .end local v4           #mChecked:I
    :cond_13
    const/4 v5, 0x4

    if-ne v1, v5, :cond_14

    .line 927
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 929
    :cond_14
    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 930
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 932
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 943
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 946
    sget-object v5, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 602
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 604
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 605
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method
