.class public Landroid/telephony/gsm/CbMessage;
.super Ljava/lang/Object;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gsm/CbMessage$1;,
        Landroid/telephony/gsm/CbMessage$CbPduParser;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;,
        Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;,
        Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;
    }
.end annotation


# static fields
.field private static final MSGSMS_CB_BUFFER_MAX_SIZE:I = 0x1e

.field private static final MSGSMS_CB_PAGE_MAX:I = 0xf

.field private static final MSGSMS_CB_PAGE_SIZE:I = 0x52

.field private static final MSGSMS_CB_PAGE_SIZE_MAX:I = 0x5d

.field private static final RAW_PROJECTION:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "GSM"

.field private static final eMSGSMS_CB_2G_GSM:I = 0x1

.field private static final eMSGSMS_CB_3G_UMTS:I = 0x2

.field private static final eMSGSMS_CB_INVALID:I = 0x3

.field private static eMSGSMS_CB_UPDATENUM_NEW:I

.field private static eMSGSMS_CB_UPDATENUM_OLD:I

.field private static eMSGSMS_CB_UPDATENUM_SAME:I


# instance fields
.field public cbType:I

.field language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private mPdu:[B

.field protected mSimSlot:I

.field malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field private mbCompressed:Z

.field mcbType:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public message:Ljava/lang/String;

.field public message_length:I

.field private mfoundMatch:Z

.field private mgeoScope:B

.field mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field private misUdhPresent:Z

.field private miso639Lang:[B

.field private mmessageBody:Ljava/lang/String;

.field mmsgCode:S

.field mmsgID:S

.field private mpage:B

.field private mpageLength:B

.field msn:S

.field private mszPageData:[C

.field mtmTime:[B

.field private mtotalPages:B

.field mupdateNum:S

.field p:Landroid/telephony/gsm/CbMessage$CbPduParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const/4 v0, -0x1

    sput v0, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_OLD:I

    .line 49
    sput v2, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_SAME:I

    .line 50
    sput v3, Landroid/telephony/gsm/CbMessage;->eMSGSMS_CB_UPDATENUM_NEW:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    const-string v1, "msgId"

    aput-object v1, v0, v3

    sput-object v0, Landroid/telephony/gsm/CbMessage;->RAW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/gsm/CbMessage;->mfoundMatch:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    .line 516
    return-void
.end method

.method static synthetic access$300(Landroid/telephony/gsm/CbMessage;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->mPdu:[B

    return-object v0
.end method

.method public static createFromPdu([B)Landroid/telephony/gsm/CbMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 188
    :try_start_0
    new-instance v1, Landroid/telephony/gsm/CbMessage;

    invoke-direct {v1}, Landroid/telephony/gsm/CbMessage;-><init>()V

    .line 190
    .local v1, msg:Landroid/telephony/gsm/CbMessage;
    invoke-virtual {v1, p0}, Landroid/telephony/gsm/CbMessage;->parseCbPdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1           #msg:Landroid/telephony/gsm/CbMessage;
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CB PDU parsing failed "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/gsm/CbMessage;
    .locals 1
    .parameter "pdu"
    .parameter "simSlot"

    .prologue
    .line 200
    invoke-static {p0}, Landroid/telephony/gsm/CbMessage;->createFromPdu([B)Landroid/telephony/gsm/CbMessage;

    move-result-object v0

    .line 201
    .local v0, msg:Landroid/telephony/gsm/CbMessage;
    invoke-virtual {v0, p1}, Landroid/telephony/gsm/CbMessage;->setSimIdentifier(I)V

    .line 202
    return-object v0
.end method

.method public static newCBMessage(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 257
    :try_start_0
    new-instance v1, Landroid/telephony/gsm/CbMessage;

    invoke-direct {v1}, Landroid/telephony/gsm/CbMessage;-><init>()V

    .line 258
    .local v1, msg:Landroid/telephony/gsm/CbMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/gsm/CbMessage;->parseCbPdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1           #msg:Landroid/telephony/gsm/CbMessage;
    :goto_0
    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CB PDU parsing failed: "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseDcs(BLandroid/telephony/gsm/CbMessage$CbPduParser;)V
    .locals 9
    .parameter "dcs"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 407
    const/4 v0, 0x0

    .local v0, i:B
    const/4 v1, 0x0

    .line 411
    .local v1, pos:B
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 412
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 413
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    .line 414
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 415
    sget-object v6, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_UNSPECIFIED:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 416
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    .line 418
    and-int/lit16 v6, p1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 420
    packed-switch v0, :pswitch_data_0

    .line 495
    :goto_0
    :pswitch_0
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iget v4, v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    if-ne v4, v5, :cond_6

    .line 496
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_8BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 507
    :goto_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "malphabetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mgroup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mclassType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mbCompressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "language = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "misUdhPresent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 424
    :pswitch_1
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 425
    and-int/lit8 v3, p1, 0xf

    .line 426
    .local v3, value:I
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4, v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->setLanguage(I)V

    goto/16 :goto_0

    .line 430
    .end local v3           #value:I
    :pswitch_2
    const/16 v4, 0x10

    if-eq p1, v4, :cond_0

    const/16 v4, 0x11

    if-ne p1, v4, :cond_2

    .line 432
    :cond_0
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 435
    and-int/lit8 v4, p1, 0x1

    if-ne v5, v4, :cond_1

    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    :goto_2
    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 438
    and-int/lit8 v3, p1, 0xf

    .line 439
    .restart local v3       #value:I
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4, v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->setLanguage(I)V

    .line 441
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    int-to-byte v2, v5

    .end local v1           #pos:B
    .local v2, pos:B
    iget-object v6, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v1

    .line 442
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    iget-object v6, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 443
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    add-int/lit8 v6, v2, 0x1

    int-to-byte v1, v6

    .end local v2           #pos:B
    .restart local v1       #pos:B
    aget-byte v6, v4, v2

    iget-object v7, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mpdu:[B

    iget v8, p2, Landroid/telephony/gsm/CbMessage$CbPduParser;->mcur:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 444
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0xd

    aput-byte v6, v4, v1

    goto/16 :goto_0

    .line 435
    .end local v3           #value:I
    :cond_1
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto :goto_2

    .line 447
    :cond_2
    const-string v4, "GSM"

    const-string v6, "No User Data Ptr for decoding ISO 639 language"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x45

    aput-byte v6, v4, v1

    .line 451
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x4e

    aput-byte v6, v4, v1

    .line 452
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    const/16 v6, 0x13

    aput-byte v6, v4, v1

    goto/16 :goto_0

    .line 460
    :pswitch_3
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 462
    and-int/lit8 v6, p1, 0x10

    if-ne v5, v6, :cond_4

    .line 463
    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    and-int/lit8 v7, p1, 0x3

    invoke-virtual {v6, v7}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->setClassType(I)V

    .line 467
    :goto_3
    and-int/lit8 v6, p1, 0x1

    if-ne v5, v6, :cond_3

    move v4, v5

    :cond_3
    iput-boolean v4, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    .line 469
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    and-int/lit8 v6, p1, 0xc

    shr-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->setAlphabetType(I)V

    goto/16 :goto_0

    .line 465
    :cond_4
    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v6, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    goto :goto_3

    .line 473
    :pswitch_4
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_WAP:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    goto/16 :goto_0

    .line 477
    :pswitch_5
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mgroup:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 478
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    and-int/lit8 v6, p1, 0x3

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->setClassType(I)V

    .line 481
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    sget-object v6, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_0:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    if-ne v4, v6, :cond_5

    .line 482
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->mclassType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 485
    :cond_5
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    and-int/lit8 v6, p1, 0x4

    shr-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->setAlphabetType(I)V

    goto/16 :goto_0

    .line 497
    :cond_6
    iget-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iget v4, v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 498
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto/16 :goto_1

    .line 500
    :cond_7
    sget-object v4, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    iput-object v4, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    goto/16 :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCbPdu()[B
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v0}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getCbPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getCount()B
    .locals 1

    .prologue
    .line 213
    iget-byte v0, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v0}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()S
    .locals 1

    .prologue
    .line 223
    iget-short v0, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    return v0
.end method

.method public getPage()B
    .locals 1

    .prologue
    .line 233
    iget-byte v0, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    return v0
.end method

.method public getPageLength()I
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    if-ne v0, v1, :cond_0

    .line 295
    const/16 v0, 0x5d

    .line 297
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method public getRefNum()I
    .locals 3

    .prologue
    .line 244
    iget-short v1, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    shl-int/lit8 v1, v1, 0x10

    iget-short v2, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    or-int v0, v1, v2

    .line 246
    .local v0, refNum:I
    return v0
.end method

.method public getSimIdentifier()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Landroid/telephony/gsm/CbMessage;->mSimSlot:I

    return v0
.end method

.method public getSn()S
    .locals 1

    .prologue
    .line 273
    iget-short v0, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    return v0
.end method

.method public parseCbPdu([B)V
    .locals 8
    .parameter "pdu"

    .prologue
    const/4 v6, 0x3

    .line 326
    iput-object p1, p0, Landroid/telephony/gsm/CbMessage;->mPdu:[B

    .line 335
    new-array v5, v6, [B

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    .line 337
    new-array v5, v6, [B

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mtmTime:[B

    .line 339
    new-instance v5, Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-direct {v5, p0, p1}, Landroid/telephony/gsm/CbMessage$CbPduParser;-><init>(Landroid/telephony/gsm/CbMessage;[B)V

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    .line 341
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getGeoScope()B

    move-result v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mgeoScope:B

    .line 342
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getMsgCode()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mmsgCode:S

    .line 343
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getSerialNumber()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    .line 345
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getUpdateNumber()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mupdateNum:S

    .line 347
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getMsgId()S

    move-result v5

    iput-short v5, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    .line 349
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getByte()B

    move-result v1

    .line 351
    .local v1, dcs:B
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbMessage$CbPduParser;->getByte()B

    move-result v3

    .line 352
    .local v3, pageParam:B
    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    .line 353
    and-int/lit8 v5, v3, 0xf

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    .line 355
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    invoke-direct {p0, v1, v5}, Landroid/telephony/gsm/CbMessage;->parseDcs(BLandroid/telephony/gsm/CbMessage$CbPduParser;)V

    .line 360
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v5}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_0

    .line 361
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default Case Received for CBLanguage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Support for Received CBLanguage so assaigned dummy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v5, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->language:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 366
    :cond_0
    sget-object v5, Landroid/telephony/gsm/CbMessage$1;->$SwitchMap$android$telephony$gsm$CbMessage$MSGSMS_CB_ALPHABET_TYPE:[I

    iget-object v6, p0, Landroid/telephony/gsm/CbMessage;->malphabetType:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 385
    const-string v5, "GSM"

    const-string v6, "default case"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    const-string v5, "GSM"

    const-string v6, "**********************************"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mbCompressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/telephony/gsm/CbMessage;->mbCompressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "miso639Lang = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->miso639Lang:[B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "misUdhPresent  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/telephony/gsm/CbMessage;->misUdhPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msn  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->msn:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mgeoScope  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mgeoScope:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmsgCode  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mmsgCode:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mupdateNum  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mupdateNum:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmsgID  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Landroid/telephony/gsm/CbMessage;->mmsgID:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mpage  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mpage:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtotalPages  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/telephony/gsm/CbMessage;->mtotalPages:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageBody  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v5, "GSM"

    const-string v6, "**********************************"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 369
    :pswitch_0
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    array-length v6, p1

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getGarbageCnt(I)I
    invoke-static {v5, v6}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$000(Landroid/telephony/gsm/CbMessage$CbPduParser;I)I

    move-result v2

    .line 370
    .local v2, iGarbage:I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x6

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v4, v5, 0x7

    .line 371
    .local v4, septetCount:I
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$100(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 376
    .end local v2           #iGarbage:I
    .end local v4           #septetCount:I
    :pswitch_1
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 380
    :pswitch_2
    array-length v5, p1

    add-int/lit8 v0, v5, -0x6

    .line 381
    .local v0, count:I
    iget-object v5, p0, Landroid/telephony/gsm/CbMessage;->p:Landroid/telephony/gsm/CbMessage$CbPduParser;

    #calls: Landroid/telephony/gsm/CbMessage$CbPduParser;->getUserDataUCS2(I)Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/telephony/gsm/CbMessage$CbPduParser;->access$200(Landroid/telephony/gsm/CbMessage$CbPduParser;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/telephony/gsm/CbMessage;->mmessageBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSimIdentifier(I)V
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 615
    const-string v0, "gsm/CbMessage _ MultiSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIdentifier() simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iput p1, p0, Landroid/telephony/gsm/CbMessage;->mSimSlot:I

    .line 617
    return-void
.end method
