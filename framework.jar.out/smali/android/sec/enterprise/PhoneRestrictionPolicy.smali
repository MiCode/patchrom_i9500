.class public Landroid/sec/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final ACTION_PHONE_READY:Ljava/lang/String; = "edm.intent.action.PHONE_READY"

.field public static final ACTION_SEND_BLOCKED_MMS:Ljava/lang/String; = "com.android.server.enterprise.restriction.SEND_BLOCKED_MMS"

.field public static final ACTION_SEND_BLOCKED_SMS:Ljava/lang/String; = "com.android.server.enterprise.restriction.SEND_BLOCKED_SMS"

.field public static final EXTRA_ORIG_ADDRESS:Ljava/lang/String; = "extra_orig_address"

.field public static final EXTRA_PDU:Ljava/lang/String; = "extra_pdu"

.field public static final EXTRA_SEND_TYPE:Ljava/lang/String; = "send_type"

.field public static final EXTRA_TIME_STAMP:Ljava/lang/String; = "extra_time_stamp"

.field public static final ICCID_AVAILABLE:Ljava/lang/String; = "com.android.server.enterprise.ICCID_AVAILABLE"

.field public static final PERMISSION_RECEIVE_BLOCKED_SMS_MMS:Ljava/lang/String; = "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

.field public static final SENDTYPE_GENERIC:I = -0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNumberOfIncomingCalls()Z
    .locals 4

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 135
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingCalls()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 141
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfIncomingCalls returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 4

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 199
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 200
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 205
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfIncomingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 4

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 155
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfOutgoingCalls returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 4

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 219
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 225
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-addNumberOfOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialNumber"

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 68
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 74
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canIncomingCall returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 277
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 283
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canIncomingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialNumber"

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 92
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canOutgoingCall returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 258
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 264
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-canOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 4

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 239
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->decreaseNumberOfOutgoingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 245
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-decreaseNumberOfOutgoingSms returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 4
    .parameter "allAdmins"

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 115
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getEmergencyCallOnly returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .locals 4

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 487
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBlockMmsWithStorageEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 493
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBlockMmsWithStorageEnabled returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .locals 4

    .prologue
    .line 446
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 447
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBlockSmsWithStorageEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 453
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBlockSmsWithStorageEnabled returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 4

    .prologue
    .line 405
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 406
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 407
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingMmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 412
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isIncomingMmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 4

    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 320
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 321
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 326
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isIncomingSmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 4

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 179
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitNumberOfSmsEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 185
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isLimitNumberOfSmsEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 4

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 363
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 364
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 369
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOutgoingSmsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 4
    .parameter "iccId"

    .prologue
    .line 528
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 529
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSimLockedByAdmin(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 535
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSimLockedByAdmin returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWapPushAllowed()Z
    .locals 4

    .prologue
    .line 516
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 517
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 518
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWapPushAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 523
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isWapPushAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "isSms"
    .parameter "pdu"
    .parameter "srcAddress"
    .parameter "sendType"
    .parameter "timeStamp"

    .prologue
    .line 502
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 503
    .local v0, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 504
    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0           #lService:Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v6

    .line 507
    .local v6, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeBlockedSmsMms fail to save sms/mms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
