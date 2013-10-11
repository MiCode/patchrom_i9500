.class public Lcom/android/internal/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimManager$SimProfile;
    }
.end annotation


# static fields
.field public static final ACTION_MULTISIM_SIM_PROFILE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_CHANGED"

.field public static final ACTION_MULTISIM_SIM_PROFILE_LOADED:Ljava/lang/String; = "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_LOADED"

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field public static final mPhoneOnKey:[Ljava/lang/String;

.field public static final mSimIconKey:[Ljava/lang/String;

.field public static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_name_1"

    aput-object v1, v0, v2

    const-string v1, "select_name_2"

    aput-object v1, v0, v3

    const-string v1, "select_name_3"

    aput-object v1, v0, v4

    const-string v1, "select_name_4"

    aput-object v1, v0, v5

    const-string v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone1_on"

    aput-object v1, v0, v2

    const-string v1, "phone2_on"

    aput-object v1, v0, v3

    const-string v1, "phone3_on"

    aput-object v1, v0, v4

    const-string v1, "phone4_on"

    aput-object v1, v0, v5

    const-string v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "property"
    .parameter "simSlot"

    .prologue
    .line 121
    return-object p0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "text"
    .parameter "simSlot"

    .prologue
    .line 117
    return-object p0
.end method

.method public static appendSocketNameSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "socketName"
    .parameter "simSlot"

    .prologue
    .line 125
    return-object p0
.end method

.method public static checkSimChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "iccId"
    .parameter "imsi"
    .parameter "simSlot"

    .prologue
    .line 266
    return-void
.end method

.method private static containsSimProfile(Lcom/android/internal/telephony/MultiSimManager$SimProfile;)I
    .locals 1
    .parameter "simProfile"

    .prologue
    .line 258
    const/4 v0, -0x1

    return v0
.end method

.method public static getActivatedSimNum()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 106
    .local v0, count:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 108
    .local v1, simState:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_0
    return v0
.end method

.method public static getDefaultSimSlot()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static getIndexSimProfile(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 254
    const/4 v0, -0x1

    return v0
.end method

.method public static getInsertedSimNum()I
    .locals 3

    .prologue
    .line 95
    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, iccType:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIsSIMOn(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, simActive:I
    if-ne v0, v1, :cond_0

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSimCardIcon(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, simIcon:I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-gez v0, :cond_0

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    .line 172
    goto :goto_0

    .line 174
    :pswitch_1
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    const/4 v0, 0x2

    .line 178
    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v0, 0x3

    .line 181
    goto :goto_0

    .line 183
    :pswitch_4
    const/4 v0, 0x4

    .line 184
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, simName:Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez v0, :cond_0

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 152
    const-string v0, "SIM 1"

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "SIM 1"

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "SIM 2"

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "SIM 3"

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "SIM 4"

    .line 147
    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "SIM 5"

    .line 150
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimSlotCount()I
    .locals 2

    .prologue
    .line 59
    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isMultiSimSlot()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoSIM()Z
    .locals 6

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, isNoSim:Z
    const/4 v0, 0x0

    .line 75
    .local v0, count:I
    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, iccType:Ljava/lang/String;
    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoSIM() : iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 80
    :cond_0
    return v2
.end method

.method public static isSimProfileFinished()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method private static loadSimProfileTable(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 244
    return-void
.end method

.method private static processSimProfile()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method private static saveSimProfileTable(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 247
    return-void
.end method

.method public static setIsSIMOn(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "simSlot"
    .parameter "isOn"

    .prologue
    .line 207
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 1 change the set turned on or off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimCardIcon(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "simSlot"
    .parameter "icon"

    .prologue
    .line 195
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    return-void
.end method

.method public static setSimCardName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "simSlot"
    .parameter "name"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    return-void
.end method
