.class public Lcom/samsung/inputmethod/dbmanager/SimeDbID;
.super Ljava/lang/Object;
.source "SimeDbID.java"


# static fields
.field public static final SIME_DB_DATE_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"

.field public static final SOGOU_HOTWORD_CN:I = 0x4

.field public static final XT9_CDB_ENTERTAINMENT_CN:I = 0xb

.field public static final XT9_CDB_SPORTS_CN:I = 0xa

.field public static final XT9_HOTWORD_ALL:I = 0x3

.field public static final XT9_HOTWORD_CN:I = 0x0

.field public static final XT9_HOTWORD_HK:I = 0x2

.field public static final XT9_HOTWORD_TW:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHotWord(I)Z
    .locals 1
    .parameter "dbID"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/samsung/inputmethod/dbmanager/SimeDbID;->isXT9Hotword(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/inputmethod/dbmanager/SimeDbID;->isSogouHotword(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSogouHotword(I)Z
    .locals 1
    .parameter "dbID"

    .prologue
    .line 28
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXT9CDB(I)Z
    .locals 1
    .parameter "dbID"

    .prologue
    .line 36
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXT9Hotword(I)Z
    .locals 1
    .parameter "dbID"

    .prologue
    .line 23
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
