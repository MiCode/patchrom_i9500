.class public Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;
.super Ljava/lang/Object;
.source "SimeSelfDefDatabase.java"


# static fields
.field private static final CLM_COUNT:Ljava/lang/String; = "_count"

.field private static final CLM_DISCRIPTION:Ljava/lang/String; = "_discription"

.field private static final CLM_POINT:Ljava/lang/String; = "_point"

.field private static final CLM_TIME:Ljava/lang/String; = "_time"

.field private static final CLM_TYPE:Ljava/lang/String; = "_type"

.field private static final CLM_UNICODE:Ljava/lang/String; = "_unicode"

.field private static SELF_DEFINE_START:C

.field private static dbFile:Ljava/lang/String;

.field private static final mColumn:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

.field public static final mOrderResKey:[Ljava/lang/String;

.field public static final mOrderResValue:[I

.field private static tableName:Ljava/lang/String;


# instance fields
.field private currentIndex:I

.field private mCachInited:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field public mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "openphonebook"

    aput-object v1, v0, v4

    const-string v1, "startcalculator"

    aput-object v1, v0, v5

    const-string v1, "browser"

    aput-object v1, v0, v6

    const-string v1, "opendial"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "openmedia"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v0, v4

    const-string v1, "_type"

    aput-object v1, v0, v5

    const-string v1, "_unicode"

    aput-object v1, v0, v6

    const-string v1, "_discription"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "_point"

    aput-object v2, v0, v1

    const-string v1, "_time"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mColumn:[Ljava/lang/String;

    .line 71
    const-string v0, "self_define.db"

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->dbFile:Ljava/lang/String;

    .line 72
    const-string v0, "self_define"

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    .line 73
    const v0, 0xf100

    sput-char v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->SELF_DEFINE_START:C

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    return-void

    .line 51
    :array_0
    .array-data 0x4
        0x60t 0x0t 0xbt 0x7ft
        0xf8t 0x0t 0xbt 0x7ft
        0x2dt 0x0t 0xbt 0x7ft
        0x5et 0x0t 0xbt 0x7ft
        0x5ft 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    .line 79
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    .line 81
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    .line 82
    iput-boolean v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCachInited:Z

    .line 98
    const-string v1, "self_define.db"

    sput-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->dbFile:Ljava/lang/String;

    .line 99
    iget-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCachInited:Z

    if-nez v1, :cond_1

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 101
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCachInited:Z

    .line 105
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private ConvertPointToString([II)Ljava/lang/String;
    .locals 4
    .parameter "point"
    .parameter "count"

    .prologue
    .line 153
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 154
    .local v1, tmpStr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p2, 0x2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    return-object v1
.end method

.method private ConvertStringToPoint(Ljava/lang/String;I)[I
    .locals 4
    .parameter "pointStr"
    .parameter "count"

    .prologue
    .line 163
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, tmpStr:[Ljava/lang/String;
    mul-int/lit8 v3, p2, 0x2

    new-array v1, v3, [I

    .line 166
    .local v1, point:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v3, p2, 0x2

    if-ge v0, v3, :cond_0

    .line 167
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method private closeDb()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_1
    return-void
.end method

.method private deleteItem(C)I
    .locals 6
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, id:I
    invoke-direct {p0, v2, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_unicode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 252
    :cond_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mContext:Landroid/content/Context;

    .line 91
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    .line 94
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    return-object v0
.end method

.method private getUsedUnicodes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, unicodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v3, "_unicode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v3, "_unicode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 149
    .end local v0           #unicodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-object v0
.end method

.method private insertItem(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 193
    const/4 v3, -0x1

    .line 194
    .local v3, id:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getUsedUnicodes()Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    .local v1, curUnicodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-char v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->SELF_DEFINE_START:C

    .line 196
    .local v0, code:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 197
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-char v4, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->SELF_DEFINE_START:C

    add-int/lit8 v4, v4, 0x19

    if-ge v0, v4, :cond_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    int-to-char v4, v0

    invoke-virtual {p1, v4}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setUnicode(C)V

    .line 203
    invoke-direct {p0, v5, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_unicode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_count"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_type"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_discription"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_point"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getPoint()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getCount()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->ConvertPointToString([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v5, "_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v3, v4

    .line 215
    :goto_1
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 216
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 219
    :cond_1
    return v3

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    goto :goto_1
.end method

.method private lunchBrowser()V
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x6

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessage(IJ)V

    .line 178
    return-void
.end method

.method private lunchCalculator()V
    .locals 3

    .prologue
    .line 185
    const/16 v0, 0x8

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessage(IJ)V

    .line 186
    return-void
.end method

.method private lunchContacts()V
    .locals 3

    .prologue
    .line 189
    const/16 v0, 0x9

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessage(IJ)V

    .line 190
    return-void
.end method

.method private lunchDial()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x5

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessage(IJ)V

    .line 174
    return-void
.end method

.method private lunchMedia()V
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x7

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessage(IJ)V

    .line 182
    return-void
.end method

.method private openDb(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .parameter "selection"
    .parameter "whereArgs"

    .prologue
    const/4 v5, 0x0

    .line 108
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 110
    .local v8, dbPath:Ljava/lang/String;
    const-string v0, "self_define.db"

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->dbFile:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->dbFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS self_define (_unicode INTEGER PRIMARY KEY,_count INTEGER,_type INTEGER,_discription TEXT,_point TEXT,_time INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mColumn:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    .line 122
    const/4 v0, 0x1

    .line 124
    .end local v8           #dbPath:Ljava/lang/String;
    :goto_1
    return v0

    .line 114
    .restart local v8       #dbPath:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 115
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    invoke-static {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 124
    .end local v8           #dbPath:Ljava/lang/String;
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readItem(ILcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z
    .locals 8
    .parameter "index"
    .parameter "item"

    .prologue
    .line 256
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v7, "_unicode"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, uniCodeIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v7, "_count"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, countIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v7, "_type"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, typeIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v7, "_discription"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 261
    .local v2, descriptionIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    const-string v7, "_point"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 263
    .local v3, pointIndex:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setUnicode(C)V

    .line 264
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setType(I)V

    .line 265
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setDescription(Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 267
    .local v0, count:I
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->ConvertStringToPoint(Ljava/lang/String;I)[I

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->setPoint(I[I)V

    .line 268
    const/4 v6, 0x1

    .line 270
    .end local v0           #count:I
    .end local v1           #countIndex:I
    .end local v2           #descriptionIndex:I
    .end local v3           #pointIndex:I
    .end local v4           #typeIndex:I
    .end local v5           #uniCodeIndex:I
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateItem(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v1, -0x1

    .line 224
    .local v1, id:I
    invoke-direct {p0, v2, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v3, "_count"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v3, "_type"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v3, "_discription"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v3, "_point"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getPoint()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getCount()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->ConvertPointToString([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    const-string v3, "_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_unicode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getUnicode()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 237
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 239
    :cond_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->insertItem(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clean()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, v1, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 297
    :cond_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    goto :goto_0
.end method

.method public delete(C)Z
    .locals 2
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->isSefDefCode(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->deleteItem(C)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 285
    :cond_0
    return v0
.end method

.method public getItemBySefCode(CLcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z
    .locals 4
    .parameter "code"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->isSefDefCode(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "_unicode=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0, v0, p2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->readItem(ILcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v0

    .line 344
    .local v0, success:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 349
    .end local v0           #success:Z
    :cond_0
    return v0
.end method

.method public getStringByCode(C)Ljava/lang/String;
    .locals 4
    .parameter "code"

    .prologue
    .line 353
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;-><init>()V

    .line 354
    .local v0, item:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 356
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getItemBySefCode(CLcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 359
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f0b0060

    if-ne v2, v3, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->lunchContacts()V

    .line 370
    :cond_0
    :goto_0
    const-string v1, ""

    .line 373
    :cond_1
    return-object v1

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f0b00f8

    if-ne v2, v3, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->lunchCalculator()V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f0b002d

    if-ne v2, v3, :cond_4

    .line 364
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->lunchBrowser()V

    goto :goto_0

    .line 365
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f0b005e

    if-ne v2, v3, :cond_5

    .line 366
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->lunchDial()V

    goto :goto_0

    .line 367
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f0b005f

    if-ne v2, v3, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->lunchMedia()V

    goto :goto_0
.end method

.method public isDefined(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, success:Z
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    const-string v2, "_discription=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    iget-object v1, v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    iget-object v1, v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 334
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mInstance:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    invoke-direct {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 337
    :cond_1
    return v0
.end method

.method public isSefDefCode(C)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 321
    sget-char v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->SELF_DEFINE_START:C

    if-lt p1, v0, :cond_0

    sget-char v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->SELF_DEFINE_START:C

    add-int/lit8 v0, v0, 0x19

    if-gt p1, v0, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modify(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->updateItem(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)I

    move-result v0

    return v0
.end method

.method public readFirst(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    .line 302
    invoke-direct {p0, v1, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->readItem(ILcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v0

    .line 304
    .local v0, success:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 307
    .end local v0           #success:Z
    :cond_0
    return v0
.end method

.method public readNext(Lcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0, v1, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->openDb(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    .line 313
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->currentIndex:I

    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->readItem(ILcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v0

    .line 314
    .local v0, success:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->closeDb()V

    .line 317
    .end local v0           #success:Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
