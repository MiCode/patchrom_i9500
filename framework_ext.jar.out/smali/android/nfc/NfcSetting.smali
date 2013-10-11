.class public final Landroid/nfc/NfcSetting;
.super Ljava/lang/Object;
.source "NfcSetting.java"


# static fields
.field public static final CHANGE_LISTEN:I = 0x2

.field public static final CHANGE_POLLING:I = 0x1

.field public static final CHANGE_RF:I = 0x3

.field private static final DBG:Z = false

.field private static final ERR_RET:I = -0x1

.field public static final PARAM_AUTO_POLL_OFF_LISTEN:I = 0xf

.field public static final PARAM_LISTEN_TIME:I = 0xb

.field public static final PARAM_POLL_GAP_TIME_A:I = 0x8

.field public static final PARAM_POLL_GAP_TIME_B:I = 0x9

.field public static final PARAM_POLL_GAP_TIME_F424:I = 0xa

.field public static final PARAM_RFON_POLL_TIME_A:I = 0x4

.field public static final PARAM_RFON_POLL_TIME_B:I = 0x5

.field public static final PARAM_RFON_POLL_TIME_F212:I = 0x7

.field public static final PARAM_RFON_POLL_TIME_F424:I = 0x6

.field public static final PARAM_RF_A_COL:I = 0x16

.field public static final PARAM_RF_BA_A:I = 0x11

.field public static final PARAM_RF_BA_B:I = 0x13

.field public static final PARAM_RF_BA_F:I = 0x15

.field public static final PARAM_RF_B_COH:I = 0x17

.field public static final PARAM_RF_B_COL:I = 0x18

.field public static final PARAM_RF_FADET_H:I = 0x1a

.field public static final PARAM_RF_FA_IA:I = 0x10

.field public static final PARAM_RF_FA_IB:I = 0x12

.field public static final PARAM_RF_FA_IF:I = 0x14

.field public static final PARAM_RF_LVTH:I = 0x19

.field public static final PARAM_RF_NDET_H:I = 0x1b

.field public static final PARAM_SELECT_POLL_TYPE_A:I = 0x0

.field public static final PARAM_SELECT_POLL_TYPE_B:I = 0x1

.field public static final PARAM_SELECT_POLL_TYPE_F212:I = 0x3

.field public static final PARAM_SELECT_POLL_TYPE_F424:I = 0x2

.field public static final PARAM_TYPE_A_WAIT:I = 0xc

.field public static final PARAM_TYPE_B_WAIT:I = 0xe

.field public static final PARAM_TYPE_F_WAIT:I = 0xd

.field private static final POLL_GAP_TIME_MAX:I = 0x80

.field private static final POLL_GAP_TIME_MIN:I = 0x1

.field private static final RFON_POLL_TIME_MAX:I = 0x7fff

.field private static final RFON_POLL_TIME_MIN:I = 0x1

.field private static final RF_CO_VALUE_MAX:I = 0x3f

.field private static final RF_CO_VALUE_MIN:I = 0x0

.field private static final RF_ITEM_SIZE_0:I = 0x0

.field private static final RF_ITEM_SIZE_2:I = 0x2

.field private static final RF_ITEM_SIZE_4:I = 0x4

.field private static final RF_ITEM_SIZE_8:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NfcSetting"

.field private static sService:Landroid/nfc/INfcSetting;

.field private static sSingleton:Landroid/nfc/NfcSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcSetting;
    .locals 3
    .parameter "adapter"

    .prologue
    .line 159
    const-class v1, Landroid/nfc/NfcSetting;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcSettingInterface()Landroid/nfc/INfcSetting;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    .line 161
    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 163
    :try_start_1
    new-instance v0, Landroid/nfc/NfcSetting;

    invoke-direct {v0}, Landroid/nfc/NfcSetting;-><init>()V

    sput-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    .line 170
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v2, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    if-nez v2, :cond_1

    .line 166
    const/4 v2, 0x0

    sput-object v2, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    :cond_1
    throw v0

    .line 170
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private setParameter(II)Z
    .locals 5
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, result:Z
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    if-nez v3, :cond_0

    .line 184
    const-string v3, "NfcSetting"

    const-string v4, "sService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v2

    .line 188
    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    invoke-interface {v3, p1, p2}, Landroid/nfc/INfcSetting;->setParameter(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 193
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeParameter(I)Z
    .locals 5
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, result:Z
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    if-nez v3, :cond_0

    .line 332
    const-string v3, "NfcSetting"

    const-string v4, "sService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return v2

    .line 336
    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    invoke-interface {v3, p1}, Landroid/nfc/INfcSetting;->changeParameter(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 341
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCardEmulationMode(I)Z
    .locals 1
    .parameter "waitType"

    .prologue
    .line 386
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Landroid/nfc/NfcSetting;->setListenParameter(II)Z

    .line 388
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/nfc/NfcSetting;->changeParameter(I)Z

    move-result v0

    return v0
.end method

.method public setListenParameter(II)Z
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 239
    :pswitch_0
    if-lt p2, v1, :cond_0

    const/16 v1, 0x80

    if-gt p2, v1, :cond_0

    .line 273
    :cond_1
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_2
    if-ltz p2, :cond_0

    const/16 v1, 0x3200

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 251
    :pswitch_3
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 257
    :pswitch_4
    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 263
    :pswitch_5
    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public setPollParameter(II)Z
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 215
    :pswitch_0
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt p2, v1, :cond_0

    .line 223
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setReadWriteMode(ZZZZ)Z
    .locals 4
    .parameter "typeA"
    .parameter "typeB"
    .parameter "typeF424"
    .parameter "typeF212"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0, v1, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    .line 360
    :goto_0
    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {p0, v0, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    .line 365
    :goto_1
    if-eqz p3, :cond_2

    .line 366
    invoke-virtual {p0, v2, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    .line 370
    :goto_2
    if-eqz p4, :cond_3

    .line 371
    invoke-virtual {p0, v3, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    .line 376
    :goto_3
    invoke-virtual {p0, v0}, Landroid/nfc/NfcSetting;->changeParameter(I)Z

    move-result v0

    return v0

    .line 358
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p0, v2, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_2

    .line 373
    :cond_3
    invoke-virtual {p0, v3, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_3
.end method

.method public setRfParameter(II)Z
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 290
    :pswitch_0
    if-ltz p2, :cond_0

    const/16 v1, 0x8

    if-ge p2, v1, :cond_0

    .line 321
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    .line 298
    :pswitch_1
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 306
    :pswitch_2
    if-ltz p2, :cond_0

    const/16 v1, 0x3f

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 313
    :pswitch_3
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
