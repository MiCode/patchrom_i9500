.class Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAccountInfo"
.end annotation


# instance fields
.field public countOfLastSyncTime:J

.field public countOfLastTrigTime:J

.field public id:J

.field public lastSyncTime:J

.field public nextSyncTime:J

.field public repeatInterval:J

.field final synthetic this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V
    .locals 0

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    .line 1982
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V
    .locals 4
    .parameter
    .parameter "accId"
    .parameter "accLastSyncTime"
    .parameter "accRpeatInterval"

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 1986
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 1987
    invoke-static {p6, p7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 1988
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 1989
    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1972
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1972
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V

    return-void
.end method

.method private clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2010
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 2011
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 2012
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 2013
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 2014
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    .line 2015
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    .line 2016
    return-void
.end method

.method private setId(J)V
    .locals 0
    .parameter "Id"

    .prologue
    .line 1996
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    .line 1997
    return-void
.end method

.method private update(JJ)V
    .locals 4
    .parameter "accLastSyncTime"
    .parameter "accRpeatInterval"

    .prologue
    .line 2000
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 2001
    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    .line 2004
    :cond_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    .line 2005
    :cond_1
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    .line 2006
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    .line 2007
    return-void
.end method


# virtual methods
.method public getRepeatInterval()J
    .locals 2

    .prologue
    .line 1992
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2021
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "EmailAccountInfo{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v2, " id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2025
    const-string v2, ", last: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2027
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 2028
    .local v1, t:Landroid/text/format/Time;
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2029
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v2, "), next: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2033
    const-string v2, ", interval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2035
    const-string v2, ", count(S:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2037
    const-string v2, ",T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2039
    const-string v2, ")}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
