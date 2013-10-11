.class Lcom/android/server/enterprise/email/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final IS_SIGNATURE_EDITED:Ljava/lang/String; = "isSignatureEdited"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 288
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 289
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 290
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 296
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 300
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 302
    iput p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 306
    iput-object p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 307
    iput-object p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 309
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 310
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 311
    iput p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 315
    iput-object p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 316
    iput-object p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .locals 3
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "isDefault"

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 334
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 338
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 339
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 340
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 342
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 349
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 351
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 352
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 353
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 354
    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 355
    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 356
    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 357
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 358
    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 359
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 360
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 362
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 363
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 366
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 367
    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 368
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 369
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 370
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 371
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 372
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 376
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 377
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 379
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 380
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 381
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 382
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 384
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .locals 3
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "isDefault"
    .parameter "peakDays"
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "peakSyncSchedule"
    .parameter "roamingSyncSchedule"
    .parameter "retrivalSize"
    .parameter "notify"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 395
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 398
    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 399
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 400
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 401
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 403
    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    .end local p5
    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 410
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 412
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 413
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 414
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 415
    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 416
    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 417
    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 418
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 419
    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 420
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 421
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 423
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 424
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 425
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 427
    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 428
    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 429
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 430
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 432
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 433
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 437
    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 438
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 439
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 440
    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 441
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 442
    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 443
    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 444
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 445
    return-void
.end method
