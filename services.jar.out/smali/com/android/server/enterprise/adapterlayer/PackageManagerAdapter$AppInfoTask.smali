.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCmd:Ljava/lang/String;

.field public final mUsage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "command"
    .parameter "usage"

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 549
    iput-wide p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    .line 550
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 582
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->compareTo(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;)I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method getUsage()J
    .locals 2

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;->mUsage:J

    return-wide v0
.end method
