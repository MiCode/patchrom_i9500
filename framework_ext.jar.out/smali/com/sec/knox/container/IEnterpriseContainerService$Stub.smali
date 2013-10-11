.class public abstract Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/IEnterpriseContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/IEnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.knox.container.IEnterpriseContainerService"

.field static final TRANSACTION_activateContainer:I = 0x6

.field static final TRANSACTION_adminPasswordReset:I = 0x7a

.field static final TRANSACTION_cancelCreateContainer:I = 0x67

.field static final TRANSACTION_changeActiveContainerPasswordStatus:I = 0x68

.field static final TRANSACTION_changePassword:I = 0x12

.field static final TRANSACTION_checkPassword:I = 0x10

.field static final TRANSACTION_containerizedAppStarting:I = 0x63

.field static final TRANSACTION_createContainer:I = 0x1

.field static final TRANSACTION_createContainerInternal:I = 0x2

.field static final TRANSACTION_enforcePasswordChange:I = 0x11

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x44

.field static final TRANSACTION_getAllowBrowser:I = 0x50

.field static final TRANSACTION_getAllowCamera:I = 0x4e

.field static final TRANSACTION_getAllowDesktopSync:I = 0x46

.field static final TRANSACTION_getAllowInternetSharing:I = 0x42

.field static final TRANSACTION_getAllowIrDA:I = 0x48

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x4c

.field static final TRANSACTION_getAllowStorageCard:I = 0x4a

.field static final TRANSACTION_getAllowTextMessaging:I = 0x40

.field static final TRANSACTION_getAllowWifi:I = 0x3e

.field static final TRANSACTION_getAndroidId:I = 0x64

.field static final TRANSACTION_getAppInstallationSource:I = 0x18

.field static final TRANSACTION_getContainerEmailId:I = 0x62

.field static final TRANSACTION_getContainerFirmwareVersion:I = 0x57

.field static final TRANSACTION_getContainerForPackage:I = 0x6a

.field static final TRANSACTION_getContainerId:I = 0x7

.field static final TRANSACTION_getContainerLockOnScreenLock:I = 0x70

.field static final TRANSACTION_getContainerPackages:I = 0x3

.field static final TRANSACTION_getContainerSecurityInformation:I = 0x13

.field static final TRANSACTION_getContainerType:I = 0x17

.field static final TRANSACTION_getContainerisedString:I = 0x6b

.field static final TRANSACTION_getContainerizedPackageName:I = 0x8

.field static final TRANSACTION_getContainers:I = 0x4

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1c

.field static final TRANSACTION_getInstalledApplications:I = 0x78

.field static final TRANSACTION_getInstalledPackages:I = 0x79

.field static final TRANSACTION_getLaunchIntentForContainerizedApp:I = 0x72

.field static final TRANSACTION_getLockType:I = 0x16

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1d

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x20

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x5f

.field static final TRANSACTION_getMountStatus:I = 0x1b

.field static final TRANSACTION_getOriginalPackageName:I = 0x9

.field static final TRANSACTION_getOriginalPackageNames:I = 0xa

.field static final TRANSACTION_getPassword:I = 0x60

.field static final TRANSACTION_getPasswordExpiration:I = 0x21

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x22

.field static final TRANSACTION_getPasswordExpires:I = 0x5d

.field static final TRANSACTION_getPasswordHistory:I = 0x3a

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x24

.field static final TRANSACTION_getPasswordMaximumLength:I = 0x26

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x27

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0x29

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x2b

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x2d

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0x2f

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0x31

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x33

.field static final TRANSACTION_getPasswordQuality:I = 0x35

.field static final TRANSACTION_getPasswordVerifyOnlyOnModeChange:I = 0x52

.field static final TRANSACTION_getProperty:I = 0x65

.field static final TRANSACTION_getPropertyOpt:I = 0x66

.field static final TRANSACTION_getSimplePasswordEnabled:I = 0x53

.field static final TRANSACTION_getStatus:I = 0xb

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x5a

.field static final TRANSACTION_installPackages:I = 0x19

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x37

.field static final TRANSACTION_isKeyguardLocked:I = 0x58

.field static final TRANSACTION_isKeyguardSecure:I = 0x59

.field static final TRANSACTION_isPasswordForbidden:I = 0x6f

.field static final TRANSACTION_isPasswordVisisbilityEnabled:I = 0x3c

.field static final TRANSACTION_lockContainer:I = 0xc

.field static final TRANSACTION_matchPublicKeyForContainer:I = 0x69

.field static final TRANSACTION_onUserInteraction:I = 0x5b

.field static final TRANSACTION_reboot:I = 0x61

.field static final TRANSACTION_registerEventReceiver:I = 0x76

.field static final TRANSACTION_removeContainer:I = 0x5

.field static final TRANSACTION_resetPassword:I = 0x38

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x43

.field static final TRANSACTION_setAllowBrowser:I = 0x4f

.field static final TRANSACTION_setAllowCamera:I = 0x4d

.field static final TRANSACTION_setAllowDesktopSync:I = 0x45

.field static final TRANSACTION_setAllowInternetSharing:I = 0x41

.field static final TRANSACTION_setAllowIrDA:I = 0x47

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x4b

.field static final TRANSACTION_setAllowStorageCard:I = 0x49

.field static final TRANSACTION_setAllowTextMessaging:I = 0x3f

.field static final TRANSACTION_setAllowWifi:I = 0x3d

.field static final TRANSACTION_setContainerLockOnScreenLock:I = 0x71

.field static final TRANSACTION_setLockType:I = 0x15

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1e

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1f

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x5e

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x23

.field static final TRANSACTION_setPasswordExpires:I = 0x5c

.field static final TRANSACTION_setPasswordHistory:I = 0x39

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x25

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x28

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x2a

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x2c

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0x2e

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0x30

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0x32

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x34

.field static final TRANSACTION_setPasswordQuality:I = 0x36

.field static final TRANSACTION_setPasswordVerifyOnlyOnModeChange:I = 0x51

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x3b

.field static final TRANSACTION_setSimplePasswordEnabled:I = 0x54

.field static final TRANSACTION_startApp:I = 0x6d

.field static final TRANSACTION_startTimer:I = 0x73

.field static final TRANSACTION_startUpgrade:I = 0x55

.field static final TRANSACTION_stopApp:I = 0x6e

.field static final TRANSACTION_stopTimer:I = 0x74

.field static final TRANSACTION_stopTimerWithTimeOut:I = 0x75

.field static final TRANSACTION_unRegisterEventReceiver:I = 0x77

.field static final TRANSACTION_uninstallPackages:I = 0x1a

.field static final TRANSACTION_unlockContainer:I = 0xd

.field static final TRANSACTION_upgradeComplete:I = 0x56

.field static final TRANSACTION_validatePasswordComplexity:I = 0x14

.field static final TRANSACTION_verifyPassword:I = 0xe

.field static final TRANSACTION_verifyPasswordForAutoMount:I = 0xf

.field static final TRANSACTION_wipeSDCardData:I = 0x6c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1771
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    .line 51
    .local v2, _arg0:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v9

    .line 53
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v9, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 59
    .end local v2           #_arg0:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v3           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_2
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 68
    .local v2, _arg0:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v3

    .line 69
    .local v3, _arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v9

    .line 70
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v9, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v2           #_arg0:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v3           #_arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v9           #_result:Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    goto :goto_2

    .line 71
    .restart local v3       #_arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .restart local v9       #_result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 76
    .end local v2           #_arg0:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v3           #_arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v9           #_result:Z
    :sswitch_3
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerPackages(I)Ljava/util/List;

    move-result-object v14

    .line 80
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #_arg0:I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainers()Ljava/util/List;

    move-result-object v13

    .line 88
    .local v13, _result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 94
    .end local v13           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :sswitch_5
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v3

    .line 99
    .restart local v3       #_arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v9

    .line 100
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v9, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 101
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 106
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v9           #_result:Z
    :sswitch_6
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->activateContainer(I)Z

    move-result v9

    .line 110
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 116
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_7
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerId(I)I

    move-result v9

    .line 120
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 126
    .end local v2           #_arg0:I
    .end local v9           #_result:I
    :sswitch_8
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 138
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 150
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v14

    .line 154
    .restart local v14       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2           #_arg0:I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getStatus(I)I

    move-result v9

    .line 164
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    .end local v2           #_arg0:I
    .end local v9           #_result:I
    :sswitch_c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->lockContainer(I)Z

    move-result v9

    .line 174
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 175
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 180
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unlockContainer(I)Z

    move-result v9

    .line 184
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v9, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 185
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 190
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 197
    .local v4, _arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 210
    .restart local v4       #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 216
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_10
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->checkPassword(ILjava/lang/String;)I

    move-result v9

    .line 222
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_11
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->enforcePasswordChange(I)Z

    move-result v9

    .line 232
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v9, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 233
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 238
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_12
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 247
    .local v5, _arg3:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 253
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_13
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v9

    .line 257
    .local v9, _result:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v9, :cond_8

    .line 259
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 263
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 269
    .end local v2           #_arg0:I
    .end local v9           #_result:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :sswitch_14
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 277
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 283
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_15
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setLockType(II)Z

    move-result v9

    .line 289
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v9, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 290
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 295
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_16
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLockType(I)I

    move-result v9

    .line 299
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 305
    .end local v2           #_arg0:I
    .end local v9           #_result:I
    :sswitch_17
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerType(I)I

    move-result v9

    .line 309
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 315
    .end local v2           #_arg0:I
    .end local v9           #_result:I
    :sswitch_18
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAppInstallationSource(ILjava/lang/String;)I

    move-result v9

    .line 321
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 327
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_19
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 333
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 335
    .local v4, _arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 337
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object v1, p0

    .line 338
    invoke-virtual/range {v1 .. v6}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z

    move-result v9

    .line 339
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v9, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 340
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 345
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v9           #_result:Z
    :sswitch_1a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 352
    .restart local v4       #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v9

    .line 353
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v9, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 354
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 359
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v9           #_result:Z
    :sswitch_1b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMountStatus(I)Z

    move-result v9

    .line 363
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v9, :cond_c

    const/4 v1, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 364
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 369
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_1c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v9

    .line 373
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 379
    .end local v2           #_arg0:I
    .end local v9           #_result:I
    :sswitch_1d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 384
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 389
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v9

    .line 390
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 387
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_d
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_e

    .line 396
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 401
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 407
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 408
    .local v4, _arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 404
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_f

    .line 414
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 418
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 419
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 425
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 426
    .local v7, _arg2:J
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 422
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v7           #_arg2:J
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_10

    .line 432
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_20
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 437
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 442
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v9

    .line 443
    .local v9, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 445
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 440
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:J
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_11

    .line 449
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_21
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 454
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 459
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v9

    .line 460
    .restart local v9       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 462
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 457
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:J
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_12

    .line 466
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_22
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 471
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 476
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v9

    .line 477
    .restart local v9       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 479
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 474
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:J
    :cond_12
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_13

    .line 483
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_23
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 488
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 494
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 495
    .restart local v7       #_arg2:J
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 491
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v7           #_arg2:J
    :cond_13
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_14

    .line 501
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_24
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 506
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 511
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistoryLength(ILandroid/content/ComponentName;)I

    move-result v9

    .line 512
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 509
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_14
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_15

    .line 518
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_25
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 523
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 529
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 530
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistoryLength(ILandroid/content/ComponentName;I)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 526
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_15
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_16

    .line 536
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_26
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 541
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMaximumLength(II)I

    move-result v9

    .line 542
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 548
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v9           #_result:I
    :sswitch_27
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 553
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 558
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v9

    .line 559
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 556
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_16
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_17

    .line 565
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_28
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 570
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 576
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 577
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 573
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_17
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_18

    .line 583
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_29
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 588
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 593
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    .line 594
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 591
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_19

    .line 600
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 605
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 611
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 612
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 608
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_19
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1a

    .line 618
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 623
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 628
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v9

    .line 629
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 626
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_1a
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1b

    .line 635
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 639
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 640
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 646
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 647
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 643
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_1b
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1c

    .line 653
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 658
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 663
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v9

    .line 664
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 661
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_1c
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1d

    .line 670
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 675
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 681
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 682
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 678
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_1d
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1e

    .line 688
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 693
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 698
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v9

    .line 699
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 696
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_1e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_1f

    .line 705
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_30
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 709
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 710
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 716
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 717
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 713
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_1f
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_20

    .line 723
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_31
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    .line 728
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 733
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v9

    .line 734
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 731
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_20
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_21

    .line 740
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_32
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 745
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 751
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 752
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 748
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_21
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_22

    .line 758
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_33
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 762
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 763
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 768
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v9

    .line 769
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 766
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_22
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_23

    .line 775
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_34
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 780
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 786
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 787
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 783
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_23
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_24

    .line 793
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_35
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 798
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 803
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v9

    .line 804
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 801
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_24
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_25

    .line 810
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_36
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    .line 815
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 821
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 822
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 818
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_25
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_26

    .line 828
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_37
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isActivePasswordSufficient(I)Z

    move-result v9

    .line 832
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    if-eqz v9, :cond_26

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 833
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 838
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_38
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 842
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 845
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->resetPassword(ILjava/lang/String;I)Z

    move-result v9

    .line 846
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    if-eqz v9, :cond_27

    const/4 v1, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 847
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 852
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v9           #_result:Z
    :sswitch_39
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 856
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 857
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 863
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 864
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 860
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_28
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_29

    .line 870
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 874
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    .line 875
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 880
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v9

    .line 881
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 878
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_29
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_2a

    .line 887
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 891
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v3, 0x1

    .line 892
    .local v3, _arg1:Z
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVisibilityEnabled(IZ)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 891
    .end local v3           #_arg1:Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2b

    .line 898
    .end local v2           #_arg0:I
    :sswitch_3c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordVisisbilityEnabled(I)Z

    move-result v9

    .line 902
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    if-eqz v9, :cond_2b

    const/4 v1, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 903
    :cond_2b
    const/4 v1, 0x0

    goto :goto_2c

    .line 908
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_3d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 912
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 913
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 919
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v4, 0x1

    .line 920
    .local v4, _arg2:Z
    :goto_2e
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 916
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_2c
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_2d

    .line 919
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2e

    .line 926
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 930
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 931
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 936
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 937
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v9, :cond_2f

    const/4 v1, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 934
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_2e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_2f

    .line 938
    .restart local v9       #_result:Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 943
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_3f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 947
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 948
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 954
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v4, 0x1

    .line 955
    .restart local v4       #_arg2:Z
    :goto_32
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 951
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_30
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_31

    .line 954
    :cond_31
    const/4 v4, 0x0

    goto :goto_32

    .line 961
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_40
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 966
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 971
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 972
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v9, :cond_33

    const/4 v1, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 969
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_32
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_33

    .line 973
    .restart local v9       #_result:Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_34

    .line 978
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_41
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 982
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    .line 983
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 989
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    const/4 v4, 0x1

    .line 990
    .restart local v4       #_arg2:Z
    :goto_36
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 986
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_34
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_35

    .line 989
    :cond_35
    const/4 v4, 0x0

    goto :goto_36

    .line 996
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_42
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1000
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    .line 1001
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1006
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_37
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1007
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    if-eqz v9, :cond_37

    const/4 v1, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_37

    .line 1008
    .restart local v9       #_result:Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_38

    .line 1013
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_43
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1017
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    .line 1018
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1024
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1025
    .local v4, _arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_38
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_39

    .line 1031
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_44
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    .line 1036
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1041
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v9

    .line 1042
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_39
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_3a

    .line 1048
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_45
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1052
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 1053
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1059
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v4, 0x1

    .line 1060
    .local v4, _arg2:Z
    :goto_3c
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1056
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_3a
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_3b

    .line 1059
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3c

    .line 1066
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_46
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1070
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 1071
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1076
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1077
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    if-eqz v9, :cond_3d

    const/4 v1, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_3c
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_3d

    .line 1078
    .restart local v9       #_result:Z
    :cond_3d
    const/4 v1, 0x0

    goto :goto_3e

    .line 1083
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_47
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1087
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 1088
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1094
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v4, 0x1

    .line 1095
    .restart local v4       #_arg2:Z
    :goto_40
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1091
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_3e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_3f

    .line 1094
    :cond_3f
    const/4 v4, 0x0

    goto :goto_40

    .line 1101
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_48
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1105
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    .line 1106
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1111
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1112
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v9, :cond_41

    const/4 v1, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_40
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_41

    .line 1113
    .restart local v9       #_result:Z
    :cond_41
    const/4 v1, 0x0

    goto :goto_42

    .line 1118
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_49
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1122
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    .line 1123
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1129
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    const/4 v4, 0x1

    .line 1130
    .restart local v4       #_arg2:Z
    :goto_44
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 1131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_42
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_43

    .line 1129
    :cond_43
    const/4 v4, 0x0

    goto :goto_44

    .line 1136
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_4a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1140
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    .line 1141
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1146
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1147
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    if-eqz v9, :cond_45

    const/4 v1, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1144
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_44
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_45

    .line 1148
    .restart local v9       #_result:Z
    :cond_45
    const/4 v1, 0x0

    goto :goto_46

    .line 1153
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_4b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1157
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    .line 1158
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1164
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    const/4 v4, 0x1

    .line 1165
    .restart local v4       #_arg2:Z
    :goto_48
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_46
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_47

    .line 1164
    :cond_47
    const/4 v4, 0x0

    goto :goto_48

    .line 1171
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1175
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_48

    .line 1176
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1181
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_49
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1182
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    if-eqz v9, :cond_49

    const/4 v1, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_48
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_49

    .line 1183
    .restart local v9       #_result:Z
    :cond_49
    const/4 v1, 0x0

    goto :goto_4a

    .line 1188
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_4d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1192
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    .line 1193
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1199
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v4, 0x1

    .line 1200
    .restart local v4       #_arg2:Z
    :goto_4c
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_4a
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_4b

    .line 1199
    :cond_4b
    const/4 v4, 0x0

    goto :goto_4c

    .line 1206
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_4e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1210
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4c

    .line 1211
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1216
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_4d
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1217
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    if-eqz v9, :cond_4d

    const/4 v1, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1214
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_4c
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_4d

    .line 1218
    .restart local v9       #_result:Z
    :cond_4d
    const/4 v1, 0x0

    goto :goto_4e

    .line 1223
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_4f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1227
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 1228
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1234
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v4, 0x1

    .line 1235
    .restart local v4       #_arg2:Z
    :goto_50
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1231
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_4e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_4f

    .line 1234
    :cond_4f
    const/4 v4, 0x0

    goto :goto_50

    .line 1241
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_50
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1245
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    .line 1246
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1251
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_51
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1252
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    if-eqz v9, :cond_51

    const/4 v1, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1249
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_50
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_51

    .line 1253
    .restart local v9       #_result:Z
    :cond_51
    const/4 v1, 0x0

    goto :goto_52

    .line 1258
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_51
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1262
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52

    const/4 v3, 0x1

    .line 1263
    .local v3, _arg1:Z
    :goto_53
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVerifyOnlyOnModeChange(IZ)Z

    move-result v9

    .line 1264
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    if-eqz v9, :cond_53

    const/4 v1, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v3           #_arg1:Z
    .end local v9           #_result:Z
    :cond_52
    const/4 v3, 0x0

    goto :goto_53

    .line 1265
    .restart local v3       #_arg1:Z
    .restart local v9       #_result:Z
    :cond_53
    const/4 v1, 0x0

    goto :goto_54

    .line 1270
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v9           #_result:Z
    :sswitch_52
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1273
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordVerifyOnlyOnModeChange(I)Z

    move-result v9

    .line 1274
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v9, :cond_54

    const/4 v1, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1275
    :cond_54
    const/4 v1, 0x0

    goto :goto_55

    .line 1280
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_53
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1284
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_55

    .line 1285
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1290
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_56
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v9

    .line 1291
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    if-eqz v9, :cond_56

    const/4 v1, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1288
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :cond_55
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_56

    .line 1292
    .restart local v9       #_result:Z
    :cond_56
    const/4 v1, 0x0

    goto :goto_57

    .line 1297
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Z
    :sswitch_54
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1301
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_57

    .line 1302
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1308
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    const/4 v4, 0x1

    .line 1309
    .restart local v4       #_arg2:Z
    :goto_59
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1305
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    :cond_57
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_58

    .line 1308
    :cond_58
    const/4 v4, 0x0

    goto :goto_59

    .line 1315
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_55
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1318
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startUpgrade(I)Z

    move-result v9

    .line 1319
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    if-eqz v9, :cond_59

    const/4 v1, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1320
    :cond_59
    const/4 v1, 0x0

    goto :goto_5a

    .line 1325
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_56
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1328
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->upgradeComplete(I)Z

    move-result v9

    .line 1329
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    if-eqz v9, :cond_5a

    const/4 v1, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1330
    :cond_5a
    const/4 v1, 0x0

    goto :goto_5b

    .line 1335
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_57
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1338
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v9

    .line 1339
    .local v9, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1341
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v2           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_58
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1348
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardLocked(I)Z

    move-result v9

    .line 1349
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    if-eqz v9, :cond_5b

    const/4 v1, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1350
    :cond_5b
    const/4 v1, 0x0

    goto :goto_5c

    .line 1355
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_59
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1358
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardSecure(I)Z

    move-result v9

    .line 1359
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    if-eqz v9, :cond_5c

    const/4 v1, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1360
    :cond_5c
    const/4 v1, 0x0

    goto :goto_5d

    .line 1365
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_5a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1368
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->inKeyguardRestrictedInputMode(I)Z

    move-result v9

    .line 1369
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    if-eqz v9, :cond_5d

    const/4 v1, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1370
    :cond_5d
    const/4 v1, 0x0

    goto :goto_5e

    .line 1375
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_5b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1378
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onUserInteraction(I)V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1384
    .end local v2           #_arg0:I
    :sswitch_5c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1388
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5e

    .line 1389
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1395
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1396
    .local v4, _arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpires(ILandroid/content/ComponentName;I)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_5e
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_5f

    .line 1402
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_5d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1406
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 1407
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1412
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_60
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpires(ILandroid/content/ComponentName;)I

    move-result v9

    .line 1413
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1410
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_5f
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_60

    .line 1419
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_5e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1423
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    .line 1424
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1430
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1431
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1427
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:I
    :cond_60
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_61

    .line 1437
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_5f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1441
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    .line 1442
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1447
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_62
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I

    move-result v9

    .line 1448
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:I
    :cond_61
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_62

    .line 1454
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_60
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1458
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_62

    .line 1459
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1464
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_63
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    .line 1465
    .local v9, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1467
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1462
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v9           #_result:Ljava/lang/String;
    :cond_62
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_63

    .line 1471
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    :sswitch_61
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1475
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1476
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->reboot(ILjava/lang/String;)V

    .line 1477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1482
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_62
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1485
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerEmailId(I)Ljava/lang/String;

    move-result-object v9

    .line 1486
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1492
    .end local v2           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_63
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1495
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->containerizedAppStarting(I)V

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1501
    .end local v2           #_arg0:I
    :sswitch_64
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1504
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAndroidId(I)Ljava/lang/String;

    move-result-object v9

    .line 1505
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1511
    .end local v2           #_arg0:I
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_65
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1515
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1516
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1517
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1519
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1523
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_66
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1527
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1529
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1530
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1531
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1533
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_67
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1540
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->cancelCreateContainer(I)Z

    move-result v9

    .line 1541
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    if-eqz v9, :cond_63

    const/4 v1, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1542
    :cond_63
    const/4 v1, 0x0

    goto :goto_64

    .line 1547
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_68
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1550
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changeActiveContainerPasswordStatus(I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v2           #_arg0:I
    :sswitch_69
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1559
    .local v2, _arg0:[B
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->matchPublicKeyForContainer([B)I

    move-result v9

    .line 1560
    .local v9, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1566
    .end local v2           #_arg0:[B
    .end local v9           #_result:I
    :sswitch_6a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1569
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerForPackage(Ljava/lang/String;)I

    move-result v9

    .line 1570
    .restart local v9       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1576
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_6b
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1580
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1581
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1582
    .local v9, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1584
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1588
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_6c
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1591
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->wipeSDCardData(I)Z

    move-result v9

    .line 1592
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    if-eqz v9, :cond_64

    const/4 v1, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1593
    :cond_64
    const/4 v1, 0x0

    goto :goto_65

    .line 1598
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_6d
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1602
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1604
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1605
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startApp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1606
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    if-eqz v9, :cond_65

    const/4 v1, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1607
    :cond_65
    const/4 v1, 0x0

    goto :goto_66

    .line 1612
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_6e
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopApp(ILjava/lang/String;)Z

    move-result v9

    .line 1618
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    if-eqz v9, :cond_66

    const/4 v1, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1619
    :cond_66
    const/4 v1, 0x0

    goto :goto_67

    .line 1624
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_6f
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1628
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1629
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v9

    .line 1630
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    if-eqz v9, :cond_67

    const/4 v1, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1631
    :cond_67
    const/4 v1, 0x0

    goto :goto_68

    .line 1636
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_70
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1639
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerLockOnScreenLock(I)Z

    move-result v9

    .line 1640
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    if-eqz v9, :cond_68

    const/4 v1, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1641
    :cond_68
    const/4 v1, 0x0

    goto :goto_69

    .line 1646
    .end local v2           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_71
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1650
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69

    const/4 v3, 0x1

    .line 1651
    .local v3, _arg1:Z
    :goto_6a
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setContainerLockOnScreenLock(IZ)Z

    move-result v9

    .line 1652
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    if-eqz v9, :cond_6a

    const/4 v1, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1650
    .end local v3           #_arg1:Z
    .end local v9           #_result:Z
    :cond_69
    const/4 v3, 0x0

    goto :goto_6a

    .line 1653
    .restart local v3       #_arg1:Z
    .restart local v9       #_result:Z
    :cond_6a
    const/4 v1, 0x0

    goto :goto_6b

    .line 1658
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v9           #_result:Z
    :sswitch_72
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1662
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1663
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1664
    .local v9, _result:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    if-eqz v9, :cond_6b

    .line 1666
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1672
    :goto_6c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1670
    :cond_6b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 1676
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Landroid/content/Intent;
    :sswitch_73
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1680
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1681
    .local v3, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startTimer(ILandroid/os/IBinder;)Z

    move-result v9

    .line 1682
    .local v9, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    if-eqz v9, :cond_6c

    const/4 v1, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1683
    :cond_6c
    const/4 v1, 0x0

    goto :goto_6d

    .line 1688
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v9           #_result:Z
    :sswitch_74
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1692
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1693
    .restart local v3       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimer(ILandroid/os/IBinder;)Z

    move-result v9

    .line 1694
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    if-eqz v9, :cond_6d

    const/4 v1, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1695
    :cond_6d
    const/4 v1, 0x0

    goto :goto_6e

    .line 1700
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v9           #_result:Z
    :sswitch_75
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1704
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1706
    .restart local v3       #_arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1707
    .restart local v7       #_arg2:J
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z

    move-result v9

    .line 1708
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    if-eqz v9, :cond_6e

    const/4 v1, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1709
    :cond_6e
    const/4 v1, 0x0

    goto :goto_6f

    .line 1714
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v7           #_arg2:J
    .end local v9           #_result:Z
    :sswitch_76
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1718
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1720
    .local v3, _arg1:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v4

    .line 1721
    .local v4, _arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v9

    .line 1722
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    if-eqz v9, :cond_6f

    const/4 v1, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1723
    :cond_6f
    const/4 v1, 0x0

    goto :goto_70

    .line 1728
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[I
    .end local v4           #_arg2:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v9           #_result:Z
    :sswitch_77
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v2

    .line 1731
    .local v2, _arg0:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v9

    .line 1732
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    if-eqz v9, :cond_70

    const/4 v1, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1733
    :cond_70
    const/4 v1, 0x0

    goto :goto_71

    .line 1738
    .end local v2           #_arg0:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v9           #_result:Z
    :sswitch_78
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1742
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1743
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v11

    .line 1744
    .local v11, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1746
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1750
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v11           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_79
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1754
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1755
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v12

    .line 1756
    .local v12, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1758
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1762
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v12           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_7a
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1765
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->adminPasswordReset(I)Z

    move-result v9

    .line 1766
    .restart local v9       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    if-eqz v9, :cond_71

    const/4 v1, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1767
    :cond_71
    const/4 v1, 0x0

    goto :goto_72

    .line 38
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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
