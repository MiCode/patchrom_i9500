.class public Landroid/net/MultiSimConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "MultiSimConnectivityManager.java"


# static fields
.field public static final ACTION_DATA_CONNECTION_CHANGE_FAIL:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

.field public static final ACTION_DATA_CONNECTION_CHANGE_SUCCESS:Ljava/lang/String; = "android.net.conn.DATA_CONNECTION_CHANGE_SUCCESS"

.field public static final ACTION_DATA_RECONNECTION_FAIL:Ljava/lang/String; = "android.net.conn.DATA_RECONNECTION_FAIL"

.field public static final EXTRA_DATA_CONNECTION_SIMSLOT:Ljava/lang/String; = "simSlot"

#the value of this static final field might be set in the static constructor
.field public static final MAX_NETWORK_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_RADIO_TYPE:I = 0x0

.field public static final MAX_TYPE_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "MultiSimConnectivityManager"


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/MultiSimConnectivityManager;->MAX_RADIO_TYPE:I

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/MultiSimConnectivityManager;->MAX_NETWORK_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 177
    iput-object p1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 178
    return-void
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 95
    rem-int/lit8 v0, p0, 0x32

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 105
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 107
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 109
    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    .line 111
    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 113
    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    .line 115
    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 117
    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 119
    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 121
    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 123
    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 125
    :pswitch_e
    const-string v0, "MOBILE_BIP"

    goto :goto_0

    .line 128
    :pswitch_f
    const-string v0, "MOBILE_CMDM"

    goto :goto_0

    .line 130
    :pswitch_10
    const-string v0, "MOBILE_CMMAIL"

    goto :goto_0

    .line 132
    :pswitch_11
    const-string v0, "MOBILE_WAP"

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static getSimSlotFromTypeMobile(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public static getTypeMobileFromSimSlot(II)I
    .locals 0
    .parameter "networkType"
    .parameter "simSlot"

    .prologue
    .line 164
    return p0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 142
    rem-int/lit8 v0, p0, 0x32

    packed-switch v0, :pswitch_data_0

    .line 159
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 157
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSwitchToSim1DataNetworkCallback(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 196
    return-void
.end method

.method public onSwitchToSim2DataNetworkCallback(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 202
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/net/MultiSimConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchToSim1DataNetwork()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
