.class public abstract Landroid/os/ITvoutService$Stub;
.super Landroid/os/Binder;
.source "ITvoutService.java"

# interfaces
.implements Landroid/os/ITvoutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvoutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvoutService"

.field static final TRANSACTION_IsExternalSupport3D:I = 0x1b

.field static final TRANSACTION_SetExternal3DMode:I = 0x1c

.field static final TRANSACTION_TvoutGetAudioChannel:I = 0x17

.field static final TRANSACTION_TvoutGetCableStatus:I = 0x3

.field static final TRANSACTION_TvoutGetResolution:I = 0x6

.field static final TRANSACTION_TvoutGetSmartDockSurfaceStatus:I = 0x21

.field static final TRANSACTION_TvoutGetStatus:I = 0x1

.field static final TRANSACTION_TvoutGetSubtitleStatus:I = 0x8

.field static final TRANSACTION_TvoutGetSuspendStatus:I = 0xb

.field static final TRANSACTION_TvoutGetVideoMode:I = 0x1e

.field static final TRANSACTION_TvoutGetVideoRotation:I = 0x13

.field static final TRANSACTION_TvoutPostSubtitle:I = 0xa

.field static final TRANSACTION_TvoutPostSuspend:I = 0xd

.field static final TRANSACTION_TvoutPostSuspendWithFontSize:I = 0xe

.field static final TRANSACTION_TvoutRegisterEVF:I = 0xf

.field static final TRANSACTION_TvoutSetCableStatus:I = 0x4

.field static final TRANSACTION_TvoutSetDefaultString:I = 0x12

.field static final TRANSACTION_TvoutSetEVFStatus:I = 0x10

.field static final TRANSACTION_TvoutSetForceMirrorMode:I = 0x18

.field static final TRANSACTION_TvoutSetFrontCameraRotation:I = 0x15

.field static final TRANSACTION_TvoutSetGpuLock:I = 0x20

.field static final TRANSACTION_TvoutSetOrientation:I = 0x1f

.field static final TRANSACTION_TvoutSetOutputMode:I = 0x7

.field static final TRANSACTION_TvoutSetPause:I = 0x11

.field static final TRANSACTION_TvoutSetRearCameraRotation:I = 0x16

.field static final TRANSACTION_TvoutSetResolution:I = 0x5

.field static final TRANSACTION_TvoutSetStatus:I = 0x2

.field static final TRANSACTION_TvoutSetSubtitleStatus:I = 0x9

.field static final TRANSACTION_TvoutSetSuspendStatus:I = 0xc

.field static final TRANSACTION_TvoutSetVideoMode:I = 0x1d

.field static final TRANSACTION_TvoutSetVideoRotation:I = 0x14

.field static final TRANSACTION_TvoutSetWFDStatus:I = 0x1a

.field static final TRANSACTION_TvoutVideoPlayingStatus:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvoutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.ITvoutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ITvoutService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ITvoutService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/ITvoutService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ITvoutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetStatus()Z

    move-result v2

    .line 50
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetStatus(Z)Z

    move-result v2

    .line 60
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2
    move v0, v3

    .line 58
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetCableStatus()Z

    move-result v2

    .line 68
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .line 77
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetCableStatus(Z)Z

    move-result v2

    .line 78
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5
    move v0, v3

    .line 76
    goto :goto_2

    .line 84
    :sswitch_5
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetResolution(I)Z

    move-result v2

    .line 88
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetResolution()I

    move-result v2

    .line 96
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    .end local v2           #_result:I
    :sswitch_7
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetOutputMode(I)Z

    move-result v2

    .line 106
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSubtitleStatus()Z

    move-result v2

    .line 114
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v2           #_result:Z
    :sswitch_9
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 123
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSubtitleStatus(Z)Z

    move-result v2

    .line 124
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_a
    move v0, v3

    .line 122
    goto :goto_3

    .line 130
    :sswitch_a
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 136
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v2, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSuspendStatus()Z

    move-result v2

    .line 144
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v2           #_result:Z
    :sswitch_c
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 153
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetSuspendStatus(Z)Z

    move-result v2

    .line 154
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_e
    move v0, v3

    .line 152
    goto :goto_4

    .line 160
    :sswitch_d
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v2

    .line 164
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutPostSuspendWithFontSize(Ljava/lang/String;I)Z

    move-result v2

    .line 176
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v2, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_f
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    move v0, v4

    .line 185
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutRegisterEVF(Z)I

    move-result v2

    .line 186
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:I
    :cond_11
    move v0, v3

    .line 184
    goto :goto_5

    .line 192
    :sswitch_10
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    move v0, v4

    .line 195
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetEVFStatus(Z)Z

    move-result v2

    .line 196
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v2, :cond_12

    move v3, v4

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_13
    move v0, v3

    .line 194
    goto :goto_6

    .line 202
    :sswitch_11
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    move v0, v4

    .line 205
    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetPause(Z)Z

    move-result v2

    .line 206
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v2, :cond_14

    move v3, v4

    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_15
    move v0, v3

    .line 204
    goto :goto_7

    .line 212
    :sswitch_12
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutSetDefaultString()Z

    move-result v2

    .line 214
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v2, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v2           #_result:Z
    :sswitch_13
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetVideoRotation()I

    move-result v2

    .line 222
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 228
    .end local v2           #_result:I
    :sswitch_14
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetVideoRotation(I)Z

    move-result v2

    .line 232
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v2, :cond_17

    move v3, v4

    :cond_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 238
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_15
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetFrontCameraRotation(I)Z

    move-result v2

    .line 242
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v2, :cond_18

    move v3, v4

    :cond_18
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_16
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetRearCameraRotation(I)Z

    move-result v2

    .line 252
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v2, :cond_19

    move v3, v4

    :cond_19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_17
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetAudioChannel()I

    move-result v2

    .line 260
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v2           #_result:I
    :sswitch_18
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    move v0, v4

    .line 269
    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetForceMirrorMode(Z)Z

    move-result v2

    .line 270
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v2, :cond_1a

    move v3, v4

    :cond_1a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1b
    move v0, v3

    .line 268
    goto :goto_8

    .line 276
    :sswitch_19
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    move v0, v4

    .line 279
    .restart local v0       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutVideoPlayingStatus(Z)Z

    move-result v2

    .line 280
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v2, :cond_1c

    move v3, v4

    :cond_1c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1d
    move v0, v3

    .line 278
    goto :goto_9

    .line 286
    :sswitch_1a
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    move v0, v4

    .line 289
    .restart local v0       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetWFDStatus(Z)Z

    move-result v2

    .line 290
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v2, :cond_1e

    move v3, v4

    :cond_1e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1f
    move v0, v3

    .line 288
    goto :goto_a

    .line 296
    :sswitch_1b
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->IsExternalSupport3D()Z

    move-result v2

    .line 298
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v2, :cond_20

    move v3, v4

    :cond_20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 304
    .end local v2           #_result:Z
    :sswitch_1c
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    move v0, v4

    .line 307
    .restart local v0       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->SetExternal3DMode(Z)Z

    move-result v2

    .line 308
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v2, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_22
    move v0, v3

    .line 306
    goto :goto_b

    .line 314
    :sswitch_1d
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetVideoMode(I)Z

    move-result v2

    .line 318
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v2, :cond_23

    move v3, v4

    :cond_23
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_1e
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetVideoMode()I

    move-result v2

    .line 326
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v2           #_result:I
    :sswitch_1f
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvoutService$Stub;->TvoutSetOrientation(I)Z

    move-result v2

    .line 336
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v2, :cond_24

    move v3, v4

    :cond_24
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 342
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_20
    const-string v5, "android.os.ITvoutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvoutService$Stub;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    move-result v2

    .line 348
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v2, :cond_25

    move v3, v4

    :cond_25
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 354
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_21
    const-string v3, "android.os.ITvoutService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/os/ITvoutService$Stub;->TvoutGetSmartDockSurfaceStatus()I

    move-result v2

    .line 356
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
