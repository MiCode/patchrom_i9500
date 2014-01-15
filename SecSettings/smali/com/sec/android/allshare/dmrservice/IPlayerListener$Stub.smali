.class public abstract Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;
.super Landroid/os/Binder;
.source "IPlayerListener.java"

# interfaces
.implements Lcom/sec/android/allshare/dmrservice/IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/IPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.allshare.dmrservice.IPlayerListener"

.field static final TRANSACTION_getCurrentMediaDuration:I = 0xb

.field static final TRANSACTION_getCurrentPlaybackPosition:I = 0xa

.field static final TRANSACTION_getVolume:I = 0xd

.field static final TRANSACTION_pausePlayback:I = 0x5

.field static final TRANSACTION_playNext:I = 0x8

.field static final TRANSACTION_prepareNextPlayback:I = 0x7

.field static final TRANSACTION_preparePlayback:I = 0x1

.field static final TRANSACTION_resumePlayback:I = 0x6

.field static final TRANSACTION_seek:I = 0x9

.field static final TRANSACTION_setMute:I = 0xe

.field static final TRANSACTION_setVolume:I = 0xc

.field static final TRANSACTION_skipDynamicBuffering:I = 0x3

.field static final TRANSACTION_startPlayback:I = 0x2

.field static final TRANSACTION_stopPlayback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IPlayerListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/allshare/dmrservice/IPlayerListener;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/sec/android/allshare/dmrservice/IPlayerListener;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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
    const/4 v4, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 51
    :sswitch_0
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    sget-object v5, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    .line 66
    .local v1, _arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->preparePlayback(Ljava/lang/String;Lcom/sec/android/allshare/dmrservice/ItemMetaData;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v1           #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    goto :goto_1

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :sswitch_2
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->startPlayback()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_3
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->skipDynamicBuffering()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_4
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->stopPlayback()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_5
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->pausePlayback()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_6
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->resumePlayback()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_7
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    sget-object v5, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    .line 117
    .restart local v1       #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->prepareNextPlayback(Ljava/lang/String;Lcom/sec/android/allshare/dmrservice/ItemMetaData;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    .end local v1           #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    goto :goto_2

    .line 123
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    :sswitch_8
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->playNext()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    :sswitch_9
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->seek(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->getCurrentPlaybackPosition()J

    move-result-wide v2

    .line 141
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 147
    .end local v2           #_result:J
    :sswitch_b
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->getCurrentMediaDuration()J

    move-result-wide v2

    .line 149
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 155
    .end local v2           #_result:J
    :sswitch_c
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->setVolume(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:I
    :sswitch_d
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->getVolume()I

    move-result v2

    .line 166
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v2           #_result:I
    :sswitch_e
    const-string v5, "com.sec.android.allshare.dmrservice.IPlayerListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 175
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/IPlayerListener$Stub;->setMute(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 47
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
