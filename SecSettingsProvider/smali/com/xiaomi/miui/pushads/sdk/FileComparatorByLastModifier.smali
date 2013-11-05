.class Lcom/xiaomi/miui/pushads/sdk/FileComparatorByLastModifier;
.super Ljava/lang/Object;
.source "FileComparatorByLastModifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .parameter "file1"
    .parameter "file2"

    .prologue
    const/4 v4, 0x1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 20
    .local v0, time1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 23
    .local v2, time2:J
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v4

    .line 24
    :cond_1
    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/FileComparatorByLastModifier;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
