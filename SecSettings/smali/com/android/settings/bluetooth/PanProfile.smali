.class final Lcom/android/settings_ex/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/PanProfile$1;,
        Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "PAN"

.field private static final ORDINAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PanProfile"

.field private static V:Z


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/PanProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->ctx:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 106
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 107
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 108
    new-instance v0, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/PanProfile;Lcom/android/settings_ex/bluetooth/PanProfile$1;)V

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 110
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/PanProfile;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/PanProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/PanProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/bluetooth/PanProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9
    .parameter "device"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 121
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->ctx:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 124
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_1

    .line 125
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->ctx:Landroid/content/Context;

    const v7, 0x7f0905f7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_0
    :goto_0
    return v5

    .line 128
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v6, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 130
    .local v4, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .local v3, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 220
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "PanProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    .line 223
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 203
    const v0, 0x7f020158

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const v0, 0x7f090228

    .line 175
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090227

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 156
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const v1, 0x7f090241

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v2, :cond_0

    .line 198
    :goto_0
    :pswitch_0
    return v1

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 186
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 198
    :pswitch_1
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const v1, 0x7f09023c

    goto :goto_0

    .line 194
    :cond_1
    const v1, 0x7f09023b

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 215
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 213
    goto :goto_0

    :cond_1
    move v0, v2

    .line 215
    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "role"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "PAN"

    return-object v0
.end method
