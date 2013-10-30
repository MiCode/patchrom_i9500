.class public Lcom/samsung/inputmethod/decoder/SimeDecContact;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SimeDecContact"


# instance fields
.field private EMAIL_FILTER_URI:Landroid/net/Uri;

.field private isGetOcrString:Z

.field private isSelectedText:Z

.field private mCandId:I

.field public mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

.field private mContactDataCount:I

.field private mContactInfoDialog:Landroid/app/AlertDialog;

.field private mSelectedContact:I

.field public mStringfromOcr:Ljava/lang/String;

.field private selectedText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 3
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 39
    const-string v0, "content://com.android.contacts/data/phone_emails_ime/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    .line 57
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    .line 58
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mSelectedContact:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mCandId:I

    .line 62
    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mStringfromOcr:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->isGetOcrString:Z

    .line 64
    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->selectedText:Ljava/lang/CharSequence;

    .line 65
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->isSelectedText:Z

    .line 79
    return-void
.end method

.method private chooseContactCandidate(I)V
    .locals 3
    .parameter "candId"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    .line 353
    .local v0, choice:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionEnglish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 360
    return-void
.end method


# virtual methods
.method public chooseCandidate(I)I
    .locals 2
    .parameter "candId"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public commitContactDialogData(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mSelectedContact:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public configfeature()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public decoding()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 25

    .prologue
    .line 130
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    const/4 v4, 0x0

    .line 282
    :goto_0
    return v4

    .line 133
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->getComposingStr()Ljava/lang/String;

    move-result-object v21

    .line 134
    .local v21, inputSpell:Ljava/lang/String;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v8, addedCandList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    if-nez v21, :cond_1

    .line 139
    const/4 v4, 0x0

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 143
    const/4 v4, 0x0

    goto :goto_0

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mCandId:I

    if-ltz v4, :cond_3

    .line 148
    const/4 v4, 0x0

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->reset()V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 154
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    .local v2, cr:Landroid/content/ContentResolver;
    if-nez v2, :cond_4

    .line 156
    const-string v4, "SimeDecContact"

    const-string v5, "updateContactInfoToCandidate() return 0 becaue cr is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->getContactProviderStatus()I

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    const-string v4, "SimeDecContact"

    const-string v5, "updateContactInfoToCandidate() return 0 becaue ProviderStatus is not STATUS_NORMAL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    :cond_5
    const/4 v12, 0x0

    .line 168
    .local v12, cur:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecContact;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 177
    const/4 v11, 0x0

    .line 178
    .local v11, contactDataIndex:I
    const/4 v15, 0x0

    .line 179
    .local v15, dataCount:I
    const/16 v18, 0x0

    .line 181
    .local v18, doNotSave:Z
    if-nez v12, :cond_6

    .line 182
    const/4 v4, 0x0

    goto :goto_0

    .line 170
    .end local v11           #contactDataIndex:I
    .end local v15           #dataCount:I
    .end local v18           #doNotSave:Z
    :catch_0
    move-exception v19

    .line 171
    .local v19, e:Landroid/database/CursorWindowAllocationException;
    const-string v4, "SimeDecContact"

    const-string v5, "CursorWindowAllocationException Error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {v19 .. v19}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    .line 174
    const/4 v4, 0x0

    goto :goto_0

    .line 185
    .end local v19           #e:Landroid/database/CursorWindowAllocationException;
    .restart local v11       #contactDataIndex:I
    .restart local v15       #dataCount:I
    .restart local v18       #doNotSave:Z
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 186
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    const-string v4, "contact_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 188
    .local v20, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v0, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->contactId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 190
    .local v17, dbid:Ljava/lang/String;
    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 236
    .end local v17           #dbid:Ljava/lang/String;
    .end local v20           #id:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iput v15, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataCount:I

    .line 239
    if-gtz v15, :cond_8

    if-lez v11, :cond_9

    .line 242
    :cond_8
    const/4 v13, 0x6

    .line 244
    .local v13, cutLength:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v13, :cond_11

    .line 245
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 246
    .local v24, parsedName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 248
    .local v9, buf:Ljava/lang/StringBuffer;
    const/16 v4, 0x2026

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 253
    new-instance v10, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    const/16 v4, 0xa

    move-object/from16 v0, v24

    invoke-direct {v10, v0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    .line 254
    .local v10, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v9           #buf:Ljava/lang/StringBuffer;
    .end local v24           #parsedName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    .line 265
    if-lez v15, :cond_9

    if-nez v11, :cond_9

    .line 266
    add-int/lit8 v11, v11, 0x1

    .line 270
    .end local v10           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v13           #cutLength:I
    :cond_9
    if-eqz v12, :cond_a

    .line 271
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mCandList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v4, :cond_b

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v8, v0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 279
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    if-nez v4, :cond_c

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->reset()V

    .line 282
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    goto/16 :goto_0

    .line 193
    .restart local v17       #dbid:Ljava/lang/String;
    .restart local v20       #id:Ljava/lang/String;
    :cond_d
    const-string v4, "display_name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 197
    .local v23, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->contactId:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    .line 201
    const-string v4, "mimetype"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 203
    .local v22, mimeType:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 205
    .local v16, dataType:I
    const-string v4, "data1"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 209
    .local v14, data:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 218
    :cond_e
    :goto_3
    if-nez v18, :cond_f

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->data:[Ljava/lang/String;

    aput-object v14, v4, v15

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataType:[I

    aput v16, v4, v15

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->mimeType:[Ljava/lang/String;

    aput-object v22, v4, v15

    .line 227
    add-int/lit8 v15, v15, 0x1

    .line 230
    :cond_f
    const/16 v18, 0x0

    .line 232
    goto/16 :goto_1

    .line 212
    :cond_10
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 216
    const/16 v18, 0x1

    goto :goto_3

    .line 260
    .end local v14           #data:Ljava/lang/String;
    .end local v16           #dataType:I
    .end local v17           #dbid:Ljava/lang/String;
    .end local v20           #id:Ljava/lang/String;
    .end local v22           #mimeType:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .restart local v13       #cutLength:I
    :cond_11
    new-instance v10, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    aget-object v4, v4, v11

    iget-object v4, v4, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-direct {v10, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    .line 261
    .restart local v10       #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getContactData()[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    return-object v0
.end method

.method public getContactDataCount()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    return v0
.end method

.method public getContactProviderStatus()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 315
    const/4 v7, -0x1

    .line 316
    .local v7, providerStatus:I
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 323
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 325
    if-eqz v7, :cond_0

    .line 331
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :goto_0
    return v7

    .line 331
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 334
    :cond_2
    const-string v0, "SimeDecContact"

    const-string v1, "getContactProviderStatus : cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPartCandidates(IZ)I
    .locals 1
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public processBackspace()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactDataCount:I

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact;->mContactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    new-instance v2, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecContact;)V

    aput-object v2, v1, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 97
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method
