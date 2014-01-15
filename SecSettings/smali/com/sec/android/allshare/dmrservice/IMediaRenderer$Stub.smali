.class public abstract Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;
.super Landroid/os/Binder;
.source "IMediaRenderer.java"

# interfaces
.implements Lcom/sec/android/allshare/dmrservice/IMediaRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.allshare.dmrservice.IMediaRenderer"

.field static final TRANSACTION_addPlayerListener:I = 0x4

.field static final TRANSACTION_allowDevice:I = 0x12

.field static final TRANSACTION_denyDevice:I = 0x13

.field static final TRANSACTION_getAllowedDevices:I = 0xe

.field static final TRANSACTION_getDeniedDevices:I = 0xf

.field static final TRANSACTION_getMediaRendererName:I = 0xd

.field static final TRANSACTION_isMediaRendererStarted:I = 0x3

.field static final TRANSACTION_removeDevice:I = 0x10

.field static final TRANSACTION_removePlayerListener:I = 0x5

.field static final TRANSACTION_removeSlideShowPlayerListener:I = 0x7

.field static final TRANSACTION_setDeviceAccessMode:I = 0x14

.field static final TRANSACTION_setMediaRendererName:I = 0xc

.field static final TRANSACTION_setPlaybackError:I = 0x8

.field static final TRANSACTION_setPlaybackState:I = 0x9

.field static final TRANSACTION_setPlayerMute:I = 0xb

.field static final TRANSACTION_setPlayerVolume:I = 0xa

.field static final TRANSACTION_setSlideShowPlayerListener:I = 0x6

.field static final TRANSACTION_setViewControlZoomPort:I = 0x11

.field static final TRANSACTION_startMediaRenderer:I = 0x1

.field static final TRANSACTION_stopMediaRenderer:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 52
    :sswitch_0
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->startMediaRenderer()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_2
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->stopMediaRenderer()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v6, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->isMediaRendererStarted()Z

    move-result v3

    .line 73
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v3           #_result:Z
    :sswitch_4
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IPlayerListener;

    move-result-object v0

    .line 83
    .local v0, _arg0:Lcom/sec/android/allshare/dmrservice/IPlayerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->addPlayerListener(Lcom/sec/android/allshare/dmrservice/IPlayerListener;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Lcom/sec/android/allshare/dmrservice/IPlayerListener;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IPlayerListener;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Lcom/sec/android/allshare/dmrservice/IPlayerListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->removePlayerListener(Lcom/sec/android/allshare/dmrservice/IPlayerListener;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:Lcom/sec/android/allshare/dmrservice/IPlayerListener;
    :sswitch_6
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;

    move-result-object v0

    .line 102
    .local v0, _arg0:Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setSlideShowPlayerListener(Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    .end local v0           #_arg0:Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
    :sswitch_7
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;

    move-result-object v0

    .line 111
    .restart local v0       #_arg0:Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->removeSlideShowPlayerListener(Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
    :sswitch_8
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setPlaybackError(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setPlaybackState(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setPlayerVolume(I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v6, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 147
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setPlayerMute(Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v4

    .line 146
    goto :goto_1

    .line 153
    :sswitch_c
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setMediaRendererName(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->getMediaRendererName()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->getAllowedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v3

    .line 172
    .local v3, _result:Lcom/sec/android/allshare/dmrservice/DeviceList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v3, p3, v5}, Lcom/sec/android/allshare/dmrservice/DeviceList;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 178
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v3           #_result:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :sswitch_f
    const-string v6, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->getDeniedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v3

    .line 186
    .restart local v3       #_result:Lcom/sec/android/allshare/dmrservice/DeviceList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_3

    .line 188
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v3, p3, v5}, Lcom/sec/android/allshare/dmrservice/DeviceList;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 192
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v3           #_result:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :sswitch_10
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->removeDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_11
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setViewControlZoomPort(I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 218
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->allowDevice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 231
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_13
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->denyDevice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 244
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_14
    const-string v4, "com.sec.android.allshare.dmrservice.IMediaRenderer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->setDeviceAccessMode(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 48
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
