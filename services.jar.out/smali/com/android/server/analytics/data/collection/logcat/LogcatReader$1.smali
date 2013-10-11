.class final Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;
.super Ljava/lang/Object;
.source "LogcatReader.java"

# interfaces
.implements Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final THREADTIME_TAG_SUFFIX:Ljava/lang/String; = ": "

.field private static final THREADTIME_TIME_STAMP_END_INDEX:I = 0x12


# instance fields
.field private final THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;->THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "record"

    .prologue
    .line 191
    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, time:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$1;->THREADTIME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "record"

    .prologue
    const/16 v4, 0x20

    .line 203
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, end:I
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 205
    .local v2, start:I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ne v0, v3, :cond_0

    .line 206
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 207
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, name:Ljava/lang/String;
    return-object v1
.end method
