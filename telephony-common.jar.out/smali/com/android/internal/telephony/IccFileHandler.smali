.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x13

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0xd

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0x6e

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_READ_ADN_DONE:I = 0x6f

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x14

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 214
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 216
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 502
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 464
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 468
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 11
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 484
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 486
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 488
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 1139
    sparse-switch p1, :sswitch_data_0

    .line 1179
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1148
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1152
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1155
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 1157
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1163
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIntType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1164
    const-string v0, "3F007F20"

    goto :goto_0

    .line 1166
    :cond_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1176
    :sswitch_5
    const-string v0, "3F00"

    goto :goto_0

    .line 1139
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f30 -> :sswitch_5
        0x2f40 -> :sswitch_5
        0x2f41 -> :sswitch_5
        0x2f42 -> :sswitch_5
        0x2f43 -> :sswitch_5
        0x2f50 -> :sswitch_5
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_4
        0x6f61 -> :sswitch_4
        0x6f7b -> :sswitch_4
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 292
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 295
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 297
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 477
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 480
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .parameter "msg"

    .prologue
    .line 514
    const/16 v47, 0x0

    .line 529
    .local v47, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    const-string v4, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 533
    .local v35, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 534
    .local v43, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 535
    .local v48, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 537
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 538
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v38

    .line 1120
    .local v38, exc:Ljava/lang/Exception;
    if-eqz v47, :cond_3b

    .line 1121
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 542
    .end local v38           #exc:Ljava/lang/Exception;
    .restart local v35       #ar:Landroid/os/AsyncResult;
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_1
    :try_start_1
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 544
    .local v42, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_2

    .line 545
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 549
    :cond_2
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 550
    .local v37, data:[B
    const/16 v4, 0xe

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 552
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_4

    .line 554
    :cond_3
    const-string v4, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 555
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 558
    :cond_4
    const-string v4, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb2

    move-object/from16 v0, v43

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v9, 0x4

    move-object/from16 v0, v43

    iget v10, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v14, 0x9

    const/16 v18, 0x4f20

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v47

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v4 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 567
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 568
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 569
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 570
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 572
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 573
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_0

    .line 574
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 578
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 579
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 580
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 582
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 583
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_0

    .line 584
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 588
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 589
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 590
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 591
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 593
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 594
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 598
    :cond_5
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 599
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_6

    .line 600
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 604
    :cond_6
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 606
    .restart local v37       #data:[B
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_8

    .line 608
    :cond_7
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 611
    :cond_8
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v46, v0

    .line 612
    .local v46, recordSize:[I
    const/4 v4, 0x0

    const/16 v5, 0xe

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v46, v4

    .line 613
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v7, 0x3

    aget-byte v7, v37, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    aput v5, v46, v4

    .line 615
    const/4 v4, 0x2

    const/4 v5, 0x1

    aget v5, v46, v5

    const/4 v7, 0x0

    aget v7, v46, v7

    div-int/2addr v5, v7

    aput v5, v46, v4

    .line 617
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 620
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v46           #recordSize:[I
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 621
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 622
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 623
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 625
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    .line 626
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 630
    :cond_9
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 632
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_a

    .line 633
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 637
    :cond_a
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 638
    .restart local v37       #data:[B
    move-object/from16 v0, v43

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 639
    .local v6, fileid:I
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v45, v0

    .line 641
    .local v45, recordNum:I
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_b

    .line 642
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 645
    :cond_b
    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_c

    const/4 v4, 0x3

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_c

    .line 646
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 649
    :cond_c
    const/16 v4, 0xe

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 651
    const/4 v4, 0x2

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 654
    .local v10, size:I
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v4, v10, v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 656
    move-object/from16 v0, v43

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v4, :cond_d

    .line 657
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 660
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb2

    move-object/from16 v0, v43

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v6           #fileid:I
    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    iget v8, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v9, 0x4

    move-object/from16 v0, v43

    iget v10, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v10           #size:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v4 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 667
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v45           #recordNum:I
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 668
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 669
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 671
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 672
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 676
    :cond_e
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 678
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_f

    .line 679
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 683
    :cond_f
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 685
    .restart local v37       #data:[B
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 687
    .restart local v6       #fileid:I
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_10

    .line 688
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 691
    :cond_10
    const/16 v4, 0xd

    aget-byte v4, v37, v4

    if-eqz v4, :cond_11

    .line 692
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 695
    :cond_11
    const/4 v4, 0x2

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 698
    .restart local v10       #size:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v47

    invoke-virtual {v0, v14, v6, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v4 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 708
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 709
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 710
    .local v51, tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 711
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 713
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_12

    .line 714
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 718
    :cond_12
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 720
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_13

    .line 721
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 725
    :cond_13
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 726
    .restart local v37       #data:[B
    move-object/from16 v0, v51

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 728
    .restart local v6       #fileid:I
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_14

    .line 729
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 732
    :cond_14
    const/16 v4, 0xd

    aget-byte v4, v37, v4

    if-eqz v4, :cond_15

    .line 733
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 737
    :cond_15
    const/4 v4, 0x2

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 742
    .restart local v10       #size:I
    const/4 v4, 0x0

    move-object/from16 v0, v51

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 743
    move-object/from16 v0, v51

    iput v10, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    .line 744
    div-int/lit16 v4, v10, 0xfd

    move-object/from16 v0, v51

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    .line 745
    const/16 v4, 0xfd

    if-le v10, v4, :cond_16

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v51

    iput-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 746
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v51

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v51

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 747
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v4, 0xfd

    if-le v10, v4, :cond_17

    const/16 v17, 0xfd

    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v4, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move v13, v6

    invoke-interface/range {v11 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 745
    :cond_16
    const/4 v4, 0x0

    goto :goto_1

    :cond_17
    move/from16 v17, v10

    .line 747
    goto :goto_2

    .line 758
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v51           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 759
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;

    .line 760
    .restart local v51       #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 761
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 763
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    .line 764
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 768
    :cond_18
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 770
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_19

    .line 771
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 775
    :cond_19
    move-object/from16 v0, v51

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    if-nez v4, :cond_1a

    .line 776
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 778
    :cond_1a
    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v51

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 783
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v51

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-le v4, v5, :cond_1c

    .line 784
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    new-array v0, v4, [B

    move-object/from16 v49, v0

    .line 785
    .local v49, resultData:[B
    const/16 v41, 0x0

    .local v41, i:I
    :goto_3
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move/from16 v0, v41

    if-ge v0, v4, :cond_1b

    .line 786
    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v52, v0

    .line 787
    .local v52, tempData:[B
    const/4 v4, 0x0

    move/from16 v0, v41

    mul-int/lit16 v5, v0, 0xfd

    move-object/from16 v0, v52

    array-length v7, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    add-int/lit8 v41, v41, 0x1

    goto :goto_3

    .line 790
    .end local v52           #tempData:[B
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 792
    .end local v41           #i:I
    .end local v49           #resultData:[B
    :cond_1c
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    shr-int/lit8 v15, v4, 0x8

    .line 793
    .local v15, iccIoP1:I
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    .line 795
    .local v16, IccIoP2:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0xb0

    move-object/from16 v0, v51

    iget v13, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v51

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-ge v4, v5, :cond_1d

    const/16 v17, 0xfd

    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v4, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v11 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, v51

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->binSize:I

    move-object/from16 v0, v51

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v5, v5, 0xfd

    sub-int v17, v4, v5

    goto :goto_4

    .line 809
    .end local v15           #iccIoP1:I
    .end local v16           #IccIoP2:I
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local v51           #tc:Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 810
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 811
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 812
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 814
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    .line 815
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 819
    :cond_1e
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 821
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_1f

    .line 822
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 826
    :cond_1f
    move-object/from16 v0, v43

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v4, :cond_20

    .line 827
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 829
    :cond_20
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 833
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v4, v5, :cond_21

    .line 834
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 836
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    const/16 v18, 0xb2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v19, v0

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v17 .. v27}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 847
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 848
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 849
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 850
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 852
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_22

    .line 853
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 857
    :cond_22
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 859
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_23

    .line 860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 864
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_READ_IMG_RECORD_DONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 871
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 872
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 873
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 875
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 880
    :cond_24
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 882
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_25

    .line 883
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 887
    :cond_25
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 894
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_b
    const/16 v53, 0x0

    .line 895
    .local v53, total:I
    const/16 v54, 0x0

    .line 896
    .local v54, used:I
    const/16 v40, 0x0

    .line 898
    .local v40, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 900
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    .line 911
    :goto_5
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 912
    .local v44, pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 914
    move/from16 v0, v54

    move-object/from16 v1, v44

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 915
    move/from16 v0, v40

    move-object/from16 v1, v44

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 917
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 919
    if-nez v54, :cond_27

    .line 925
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v44

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 926
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 903
    .end local v44           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_26
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v53, v4, v5

    .line 904
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x1

    aget v54, v4, v5

    .line 905
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x2

    aget v40, v4, v5

    goto :goto_5

    .line 930
    .restart local v44       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    :cond_27
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v4, :cond_28

    .line 932
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v44

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 935
    :cond_28
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    const/16 v18, 0xb2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v19, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v17 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 943
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v40           #firstIndex:I
    .end local v44           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v53           #total:I
    .end local v54           #used:I
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 944
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    .line 946
    .restart local v44       #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 947
    .local v50, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 952
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_29

    .line 953
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 956
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pblc EFID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "record number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "total record = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Used Record = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "count record = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v4, :cond_2a

    .line 959
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 960
    .local v22, emails:[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v50

    iget-object v5, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    aput-object v5, v22, v4

    .line 963
    new-instance v17, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v21, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v23, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v24, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v25, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v26, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v27, v4, v5

    invoke-direct/range {v17 .. v27}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .local v17, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 966
    .end local v17           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v22           #emails:[Ljava/lang/String;
    :cond_2a
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 967
    .restart local v22       #emails:[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v50

    iget-object v5, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    aput-object v5, v22, v4

    .line 970
    new-instance v17, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v21, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v23, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v24, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v25, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v26, v4, v5

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v27, v4, v5

    invoke-direct/range {v17 .. v27}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .restart local v17       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v44

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 974
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v4, v5, :cond_2b

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v5, 0xffff

    if-ne v4, v5, :cond_2c

    .line 975
    :cond_2b
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 977
    :cond_2c
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0xb2

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v25, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-interface/range {v23 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 986
    .end local v17           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v22           #emails:[Ljava/lang/String;
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v44           #pblc:Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;
    .end local v50           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 987
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 988
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 989
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 991
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2d

    .line 992
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 996
    :cond_2d
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 998
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_2e

    .line 999
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1003
    :cond_2e
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 1004
    .restart local v37       #data:[B
    move-object/from16 v0, v43

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 1005
    .restart local v6       #fileid:I
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v45, v0

    .line 1007
    .restart local v45       #recordNum:I
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_2f

    .line 1008
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 1011
    :cond_2f
    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_30

    .line 1012
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 1015
    :cond_30
    const/16 v4, 0xe

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 1017
    const/4 v4, 0x2

    aget-byte v4, v37, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    add-int v10, v4, v5

    .line 1020
    .restart local v10       #size:I
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v4, v10, v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 1022
    move-object/from16 v0, v43

    iget-boolean v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v4, :cond_31

    .line 1023
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    iput-object v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 1026
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0xb2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v25, v0

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    invoke-interface/range {v23 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1034
    .end local v6           #fileid:I
    .end local v10           #size:I
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v45           #recordNum:I
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 1035
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 1037
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_32

    .line 1038
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1042
    :cond_32
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object/from16 v36, v0

    .line 1043
    .local v36, capaResult:[I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1047
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v36           #capaResult:[I
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 1048
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 1049
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v39, v0

    .line 1050
    .local v39, fileStatus:[I
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_33

    .line 1051
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1055
    :cond_33
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 1057
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_34

    .line 1058
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1062
    :cond_34
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 1064
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_35

    .line 1065
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1069
    :cond_35
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v37, v0

    .line 1071
    .restart local v37       #data:[B
    const/4 v4, 0x4

    const/4 v5, 0x6

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_36

    .line 1072
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 1075
    :cond_36
    const/4 v4, 0x1

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_37

    const/4 v4, 0x3

    const/16 v5, 0xd

    aget-byte v5, v37, v5

    if-eq v4, v5, :cond_37

    .line 1076
    new-instance v4, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v4

    .line 1078
    :cond_37
    const/4 v4, 0x0

    const/16 v5, 0xb

    aget-byte v5, v37, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v39, v4

    .line 1079
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1083
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v37           #data:[B
    .end local v39           #fileStatus:[I
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 1084
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/os/Message;

    move-object/from16 v47, v0

    .line 1086
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_38

    .line 1087
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1091
    :cond_38
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object/from16 v34, v0

    .line 1092
    .local v34, RecordInfo:[I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1097
    .end local v34           #RecordInfo:[I
    .end local v35           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/AsyncResult;

    .line 1098
    .restart local v35       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 1099
    .restart local v43       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/IccIoResult;

    .line 1100
    .restart local v48       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v47, v0

    .line 1102
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_39

    .line 1103
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1107
    :cond_39
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v42

    .line 1109
    .restart local v42       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v42, :cond_3a

    .line 1110
    const-string v4, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1112
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1116
    :cond_3a
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1123
    .end local v35           #ar:Landroid/os/AsyncResult;
    .end local v42           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v43           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v48           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v38       #exc:Ljava/lang/Exception;
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uncaught exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_a
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_3
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xd -> :sswitch_d
        0xe -> :sswitch_9
        0xf -> :sswitch_e
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_11
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 252
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 256
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 260
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 272
    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 277
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 280
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 371
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 374
    .local v11, response:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 385
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 399
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 401
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 404
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 234
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 238
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 240
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 309
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 312
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 314
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 352
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 355
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 357
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 334
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 336
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 448
    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 452
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 417
    const/16 v1, 0x12

    new-instance v2, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 420
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 423
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 434
    return-void
.end method
