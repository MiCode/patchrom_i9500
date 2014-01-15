.class public abstract Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;
.super Landroid/os/Binder;
.source "ISlideShowPlayerListener.java"

# interfaces
.implements Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

.field static final TRANSACTION_addPlayList:I = 0x2

.field static final TRANSACTION_pauseSlideShow:I = 0x5

.field static final TRANSACTION_removeFromPlayList:I = 0x3

.field static final TRANSACTION_setBackgroundMusicList:I = 0x8

.field static final TRANSACTION_setBackgroundMusicVolume:I = 0x7

.field static final TRANSACTION_setPlayList:I = 0x1

.field static final TRANSACTION_startSlideShow:I = 0x4

.field static final TRANSACTION_stopSlideShow:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;
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
    const-string v1, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 51
    :sswitch_0
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->setPlayList([Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->addPlayList([Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->removeFromPlayList([Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_4
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->startSlideShow(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->pauseSlideShow()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_6
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->stopSlideShow()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    :sswitch_7
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->setBackgroundMusicVolume(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v2, "com.sec.android.allshare.dmrservice.ISlideShowPlayerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Lcom/sec/android/allshare/dmrservice/BGMList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/dmrservice/BGMList;

    .line 123
    .local v0, _arg0:Lcom/sec/android/allshare/dmrservice/BGMList;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/allshare/dmrservice/ISlideShowPlayerListener$Stub;->setBackgroundMusicList(Lcom/sec/android/allshare/dmrservice/BGMList;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:Lcom/sec/android/allshare/dmrservice/BGMList;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/sec/android/allshare/dmrservice/BGMList;
    goto :goto_1

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
