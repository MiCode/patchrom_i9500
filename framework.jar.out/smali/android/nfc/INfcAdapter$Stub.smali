.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_closeSecNdefService:I = 0x20

.field static final TRANSACTION_createSecNdefService:I = 0x1f

.field static final TRANSACTION_deselectSecureElement:I = 0x17

.field static final TRANSACTION_disable:I = 0x9

.field static final TRANSACTION_disableNdefPush:I = 0xc

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableNdefPush:I = 0xb

.field static final TRANSACTION_enableSecNdef:I = 0x23

.field static final TRANSACTION_getCurSeRouteInfo:I = 0x1b

.field static final TRANSACTION_getNfcAdapterBrcmConfigInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterBrcmExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAdapterDtaInterface:I = 0x5

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x2

.field static final TRANSACTION_getNfcAdapterExtrasInterfaceForSmartcard:I = 0x1e

.field static final TRANSACTION_getNfcSettingInterface:I = 0x7

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getNfcUtilityInterface:I = 0x6

.field static final TRANSACTION_getSeID:I = 0x1a

.field static final TRANSACTION_getSecureElementList:I = 0x14

.field static final TRANSACTION_getSelectedSecureElement:I = 0x15

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_isEmbddedSecureElement:I = 0x1c

.field static final TRANSACTION_isNdefPushEnabled:I = 0xd

.field static final TRANSACTION_isSecNdefEnabled:I = 0x24

.field static final TRANSACTION_isUiccTypeSecureElement:I = 0x1d

.field static final TRANSACTION_readerDisable:I = 0x12

.field static final TRANSACTION_readerEnable:I = 0x13

.field static final TRANSACTION_selectSecureElement:I = 0x16

.field static final TRANSACTION_sendSecDefaultNdefMsg:I = 0x22

.field static final TRANSACTION_sendSecNdefMsg:I = 0x21

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setNdefPushCallback:I = 0xf

.field static final TRANSACTION_setP2pModes:I = 0x11

.field static final TRANSACTION_setSecureElementState:I = 0x18

.field static final TRANSACTION_storeSePreference:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v6

    .line 52
    .local v6, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 58
    .end local v6           #_result:Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v6

    .line 62
    .local v6, _result:Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 68
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Landroid/nfc/INfcAdapterExtras;
    :sswitch_3
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterBrcmExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterBrcmExtras;

    move-result-object v6

    .line 72
    .local v6, _result:Landroid/nfc/INfcAdapterBrcmExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/nfc/INfcAdapterBrcmExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 78
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Landroid/nfc/INfcAdapterBrcmExtras;
    :sswitch_4
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterBrcmConfigInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterBrcmConfig;

    move-result-object v6

    .line 82
    .local v6, _result:Landroid/nfc/INfcAdapterBrcmConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/nfc/INfcAdapterBrcmConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Landroid/nfc/INfcAdapterBrcmConfig;
    :sswitch_5
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterDtaInterface()Landroid/nfc/INfcAdapterDta;

    move-result-object v6

    .line 90
    .local v6, _result:Landroid/nfc/INfcAdapterDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/nfc/INfcAdapterDta;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 96
    .end local v6           #_result:Landroid/nfc/INfcAdapterDta;
    :sswitch_6
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcUtilityInterface()Landroid/nfc/INfcUtility;

    move-result-object v6

    .line 98
    .local v6, _result:Landroid/nfc/INfcUtility;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/nfc/INfcUtility;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 104
    .end local v6           #_result:Landroid/nfc/INfcUtility;
    :sswitch_7
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcSettingInterface()Landroid/nfc/INfcSetting;

    move-result-object v6

    .line 106
    .local v6, _result:Landroid/nfc/INfcSetting;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/nfc/INfcSetting;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 112
    .end local v6           #_result:Landroid/nfc/INfcSetting;
    :sswitch_8
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v6

    .line 114
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v7

    .line 123
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v6

    .line 124
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_8
    move v1, v8

    .line 122
    goto :goto_1

    .line 130
    :sswitch_a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v6

    .line 132
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v6           #_result:Z
    :sswitch_b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v6

    .line 140
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v6

    .line 148
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v6

    .line 156
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v6, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v6           #_result:Z
    :sswitch_e
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 171
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_2
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 173
    .local v2, _arg1:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    sget-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/TechListParcel;

    .line 179
    .local v3, _arg2:Landroid/nfc/TechListParcel;
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:[Landroid/content/IntentFilter;
    .end local v3           #_arg2:Landroid/nfc/TechListParcel;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_2

    .line 177
    .restart local v2       #_arg1:[Landroid/content/IntentFilter;
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/nfc/TechListParcel;
    goto :goto_3

    .line 185
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:[Landroid/content/IntentFilter;
    .end local v3           #_arg2:Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INdefPushCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INdefPushCallback;

    move-result-object v2

    .line 190
    .local v2, _arg1:Landroid/nfc/INdefPushCallback;
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setNdefPushCallback(Ljava/lang/String;Landroid/nfc/INdefPushCallback;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/nfc/INdefPushCallback;
    :sswitch_10
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    sget-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 204
    .local v1, _arg0:Landroid/nfc/Tag;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    .end local v1           #_arg0:Landroid/nfc/Tag;
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/Tag;
    goto :goto_4

    .line 210
    .end local v1           #_arg0:Landroid/nfc/Tag;
    :sswitch_11
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_12
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v6

    .line 223
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v6, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v6

    .line 231
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v6, :cond_11

    move v8, v7

    :cond_11
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v6

    .line 239
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 245
    .end local v6           #_result:[I
    :sswitch_15
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getSelectedSecureElement()I

    move-result v6

    .line 247
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v6           #_result:I
    :sswitch_16
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->selectSecureElement(I)I

    move-result v6

    .line 257
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_17
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->deselectSecureElement(I)I

    move-result v6

    .line 267
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v1, v7

    .line 276
    .local v1, _arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setSecureElementState(Z)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_12
    move v1, v8

    .line 275
    goto :goto_5

    .line 282
    :sswitch_19
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v2, v7

    .line 287
    .local v2, _arg1:Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->storeSePreference(IZ)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_13
    move v2, v8

    .line 286
    goto :goto_6

    .line 293
    .end local v1           #_arg0:I
    :sswitch_1a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getSeID(I)I

    move-result v6

    .line 297
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_1b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getCurSeRouteInfo()I

    move-result v6

    .line 305
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v6           #_result:I
    :sswitch_1c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->isEmbddedSecureElement(I)Z

    move-result v6

    .line 315
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v6, :cond_14

    move v8, v7

    :cond_14
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->isUiccTypeSecureElement(I)Z

    move-result v6

    .line 325
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v6, :cond_15

    move v8, v7

    :cond_15
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 331
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_1e
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterfaceForSmartcard(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtrasForSmartcard;

    move-result-object v6

    .line 335
    .local v6, _result:Landroid/nfc/INfcAdapterExtrasForSmartcard;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v6, :cond_16

    invoke-interface {v6}, Landroid/nfc/INfcAdapterExtrasForSmartcard;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 341
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Landroid/nfc/INfcAdapterExtrasForSmartcard;
    :sswitch_1f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 351
    .local v4, _arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I

    move-result v6

    .line 353
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[B
    .end local v6           #_result:I
    :sswitch_20
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->closeSecNdefService(I)I

    move-result v6

    .line 363
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 369
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_21
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 374
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 379
    .local v2, _arg1:Landroid/nfc/NdefMessage;
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->sendSecNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v6

    .line 380
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    .end local v6           #_result:I
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_7

    .line 386
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_22
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 389
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 394
    .local v1, _arg0:Landroid/nfc/NdefMessage;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->sendSecDefaultNdefMsg(Landroid/nfc/NdefMessage;)I

    move-result v6

    .line 395
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 392
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    .end local v6           #_result:I
    :cond_18
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/NdefMessage;
    goto :goto_8

    .line 401
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :sswitch_23
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v7

    .line 404
    .local v1, _arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->enableSecNdef(Z)Z

    move-result v6

    .line 405
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v6, :cond_19

    move v8, v7

    :cond_19
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_1a
    move v1, v8

    .line 403
    goto :goto_9

    .line 411
    :sswitch_24
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSecNdefEnabled()Z

    move-result v6

    .line 413
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v6, :cond_1b

    move v8, v7

    :cond_1b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
