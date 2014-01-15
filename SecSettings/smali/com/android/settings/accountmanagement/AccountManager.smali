.class public Lcom/android/settings_ex/accountmanagement/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# static fields
.field public static final DB_TBL_NAME_SECURED_FILE:Ljava/lang/String; = "SecuredFolder"

.field public static final DB_TBL_SECURED_ARG_GROUP_ID:Ljava/lang/String; = "GroupId"

.field public static final DB_URI_PACKAGE_NAME:Ljava/lang/String; = "content://com.sec.android.spc.database/"

.field private static isInitialised:Z

.field private static mAccountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;


# instance fields
.field private final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field private final AUTHORITY:Ljava/lang/String;

.field private final GROUP_ID:Ljava/lang/String;

.field private final NICK_NAME:Ljava/lang/String;

.field private final PERMISSION_CONTENT_URI:Landroid/net/Uri;

.field private final SAMSUNG_ID:Ljava/lang/String;

.field private final SECURE_CONTENT_URI:Landroid/net/Uri;

.field private final SPC_ACCOUNT_TABLE:Ljava/lang/String;

.field private final SPC_PERMISSION_TABLE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final USER_ADMIN:Ljava/lang/String;

.field private final USER_DIVISION:Ljava/lang/String;

.field private final USER_GUEST:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "com.sec.android.spc.easysetup.account.AccountContentProvider"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->AUTHORITY:Ljava/lang/String;

    .line 14
    const-string v0, "permission"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->SPC_PERMISSION_TABLE:Ljava/lang/String;

    .line 15
    const-string v0, "account"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->SPC_ACCOUNT_TABLE:Ljava/lang/String;

    .line 17
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://com.sec.android.spc.easysetup.account.AccountContentProvider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "SamsungId"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->SAMSUNG_ID:Ljava/lang/String;

    const-string v0, "UserId"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->GROUP_ID:Ljava/lang/String;

    const-string v0, "admin"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->USER_ADMIN:Ljava/lang/String;

    const-string v0, "guest"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->USER_GUEST:Ljava/lang/String;

    .line 21
    const-string v0, "NickName"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->NICK_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "UserDivision"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->USER_DIVISION:Ljava/lang/String;

    .line 27
    const-string v0, "content://com.sec.android.spc.database/SecuredFolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->SECURE_CONTENT_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "AccountManager"

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/accountmanagement/AccountManager;->isInitialised:Z

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/accountmanagement/AccountManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/settings_ex/accountmanagement/AccountManager;->isInitialised:Z

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/settings_ex/accountmanagement/AccountManager;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accountmanagement/AccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mAccountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mAccountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    return-object v0
.end method


# virtual methods
.method public addGuestAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "mSamsungAccID"

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v0, mContentValue:Landroid/content/ContentValues;
    const-string v1, "SamsungId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public addGuestAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mSamsungAccID"
    .parameter "mNickName"

    .prologue
    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, mContentValue:Landroid/content/ContentValues;
    const-string v1, "SamsungId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "NickName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 171
    return-void
.end method

.method public dBGetTotalSecuredFileInfo(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14
    .parameter "groupId"

    .prologue
    const/4 v13, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    move-object v9, v13

    .line 284
    :cond_0
    :goto_0
    return-object v9

    .line 247
    :cond_1
    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/Object;

    .line 248
    .local v9, object:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 251
    .local v6, cursorFinal:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "SecuredFolder"

    aput-object v4, v11, v1

    .line 252
    .local v11, tableNames:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GroupId LIKE \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, saIdSel:Ljava/lang/String;
    const-string v12, "UNION ALL"

    .line 254
    .local v12, unionFactor:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Size"

    aput-object v4, v2, v1

    .line 255
    .local v2, projection:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 256
    .local v10, sortOrder:Ljava/lang/String;
    const/4 v8, -0x1

    .line 257
    .local v8, limit:I
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->SECURE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 258
    if-nez v6, :cond_3

    .line 279
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v6, 0x0

    :cond_2
    move-object v9, v13

    goto :goto_0

    .line 263
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    const/4 v1, 0x0

    const-string v4, "Size"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v6, 0x0

    goto :goto_0

    .line 266
    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1

    .line 267
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 271
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #saIdSel:Ljava/lang/String;
    .end local v8           #limit:I
    .end local v10           #sortOrder:Ljava/lang/String;
    .end local v11           #tableNames:[Ljava/lang/String;
    .end local v12           #unionFactor:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 272
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    const/4 v6, 0x0

    .line 279
    :cond_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 279
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v6, 0x0

    :cond_6
    throw v1
.end method

.method public deleteGuestAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "mSamsungAccID"

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamsungId LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, saIdSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public getAdminSamsungId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getAdminSamsungId is called"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get Admin GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_0
    return-object v4

    .line 55
    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserDivision"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "SamsungId"

    aput-object v5, v2, v1

    .line 56
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "UserDivision LIKE \'admin\'"

    .line 57
    .local v3, userDivisionSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getAdminSamsungId > cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, samsungAccountId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdminSamsungId > samsungAccountId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 70
    goto :goto_0
.end method

.method public getEasySetupAccountId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get Admin GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    .line 237
    :goto_0
    return-object v7

    .line 218
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserDivision"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "SamsungId"

    aput-object v5, v2, v1

    .line 219
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "UserDivision LIKE \'guest\'"

    .line 220
    .local v3, userDivisionSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v7, guestSamsungAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "getAdminGroupId > cursor is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 231
    :cond_3
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, samsungAccountId:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "samsungAccountId"

    .prologue
    const/4 v4, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, groupId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-object v4

    .line 114
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserId"

    aput-object v5, v2, v1

    .line 115
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SamsungId LIKE \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, saIdSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get GroupId > cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "UserId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupIdBySamsungAccountId > groupId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 126
    goto :goto_0
.end method

.method public getGuestGroupId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getGuestGroupId is called"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get Guest GroupId > Content Provider is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-object v4

    .line 141
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v8, guestGroupIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UserId"

    aput-object v5, v2, v1

    .line 143
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "UserDivision LIKE \'guest\'"

    .line 144
    .local v3, userDivisionSel:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v5, "getGuestGroupId > cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    :cond_3
    const-string v1, "UserId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, guestGroupId:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v4, v8

    .line 160
    goto :goto_0
.end method

.method public getGuestSamsungAccountId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v3, "getGuestSamsungAccountId > Content Provider is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 102
    :goto_0
    return-object v7

    .line 84
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v7, guestSamsungAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->PERMISSION_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v2, "getGuestSamsungAccountId > cursor is null or zero"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    :cond_3
    const-string v1, "SamsungId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, samsungAccountId:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public updateUserDivision(Ljava/lang/String;Z)V
    .locals 5
    .parameter "mSamsungId"
    .parameter "what"

    .prologue
    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "setUserDevision is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "Fail to set User Devision > Content Provider is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 184
    const-string v3, "UserDivision"

    const-string v4, "admin"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SamsungId LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, groupIdSel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/AccountManager;->TAG:Ljava/lang/String;

    const-string v4, "Success to set User Devision"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v0           #groupIdSel:Ljava/lang/String;
    :cond_1
    const-string v3, "UserDivision"

    const-string v4, "guest"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
