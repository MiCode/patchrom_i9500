.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pPeer"

.field private static final sDeviceTypeImages:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceType:I

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 0x4
        0x38t 0x2t 0x2t 0x7ft
        0x3bt 0x2t 0x2t 0x7ft
        0x3et 0x2t 0x2t 0x7ft
        0x37t 0x2t 0x2t 0x7ft
        0x3ft 0x2t 0x2t 0x7ft
        0x3dt 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
        0x3ct 0x2t 0x2t 0x7ft
        0x3at 0x2t 0x2t 0x7ft
        0x40t 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 6
    .parameter "context"
    .parameter "dev"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 63
    iput-object p2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, tokens:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v0

    if-ge v1, v4, :cond_2

    .line 71
    :cond_1
    const-string v1, "WifiP2pPeer"

    const-string v2, "Malformed primaryDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 75
    iget v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    if-lt v1, v4, :cond_3

    iget v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    .line 76
    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 78
    :cond_3
    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, statusArray:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const v2, 0x7f090413

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 142
    const v2, 0x7f090441

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 107
    instance-of v2, p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v2, :cond_2

    .line 112
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 118
    .local v0, other:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_0

    .line 91
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, deviceName:Landroid/widget/TextView;
    const-string v1, "@android:style/Theme.DeviceDefault"

    const-string v2, "Theme.DeviceDefault.Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const v1, -0xff9467

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .end local v0           #deviceName:Landroid/widget/TextView;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 98
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 99
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .restart local v0       #deviceName:Landroid/widget/TextView;
    :cond_2
    const v1, -0xd05937

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setTalkback(Z)V
    .locals 0
    .parameter "talkback"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 103
    return-void
.end method
