.class Lcom/android/server/AlarmManagerService$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    }
.end annotation


# instance fields
.field private final SYNC_COPRIME_VALUE:J

.field private final SYNC_MAX_VALUE:J

.field private final SYNC_MIN_VALUE:J

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmailAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailIdForNextSync:J

.field private mEmailNextSyncTime:J

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"

    .prologue
    const-wide/32 v11, 0xdbba00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1548
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    .line 1532
    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 1533
    const-wide/32 v7, 0xea60

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_COPRIME_VALUE:J

    .line 1534
    const-wide/32 v7, 0x493e0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MIN_VALUE:J

    .line 1535
    iput-wide v11, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MAX_VALUE:J

    .line 1537
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1538
    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    .line 1539
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    .line 1541
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1542
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 1543
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 1544
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 1545
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    .line 1549
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, cscAppSyncList:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1554
    .local v4, listApps:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1555
    aget-object v7, v4, v9

    const-string v8, "whitelist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1557
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 1558
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1563
    .end local v2           #i:I
    :cond_0
    aget-object v7, v4, v9

    const-string v8, "blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1564
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    .line 1565
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 1568
    const/4 v2, 0x1

    .restart local v2       #i:I
    :goto_1
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 1569
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1574
    .end local v2           #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.spp.push"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.katana"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.twitter.android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.orca"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.kakao.talk"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.google.android.apps.plus"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.mobilesrepublic.appygeek"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "mnn.Android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_2
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1588
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1589
    .local v6, pC:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1592
    .end local v6           #pC:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .local v5, nm:I
    :goto_3
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 1593
    const-string v8, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<TargetPackages> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1596
    :cond_4
    const-string v7, "account"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 1597
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v10}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1598
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .locals 21
    .parameter "alarm"
    .parameter "inputDistance"

    .prologue
    .line 1746
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    :cond_0
    const/4 v12, 0x1

    .line 1748
    .local v12, isRtc:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v8, v17, v19

    .line 1749
    .local v8, curTimeSkew:J
    if-eqz v12, :cond_8

    const-wide/16 v15, 0x0

    .line 1750
    .local v15, skew:J
    :goto_1
    const-wide v13, 0x7fffffffffffffffL

    .line 1751
    .local v13, nextAlarmWhen:J
    move-wide/from16 v10, p2

    .line 1754
    .local v10, distance:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_3

    .line 1755
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    .line 1756
    .local v3, a:Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v3, :cond_3

    .line 1757
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    :cond_1
    const-wide/16 v17, 0x0

    :goto_2
    add-long v13, v19, v17

    .line 1760
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    rem-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    .line 1762
    :cond_2
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1773
    .end local v3           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    :goto_3
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-nez v17, :cond_5

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    .line 1775
    .restart local v3       #a:Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v3, :cond_5

    .line 1776
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_b

    :cond_4
    const-wide/16 v17, 0x0

    :goto_4
    add-long v13, v19, v17

    .line 1780
    .end local v3           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " next: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", RTC: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SKEW: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_6
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-eqz v17, :cond_d

    .line 1784
    sub-long/2addr v13, v15

    .line 1789
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_c

    .line 1790
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v17, v13

    div-long v6, v17, v10

    .line 1791
    .local v6, count:J
    mul-long v17, v10, v6

    add-long v17, v17, v13

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1804
    .end local v6           #count:J
    :goto_5
    return-void

    .line 1746
    .end local v8           #curTimeSkew:J
    .end local v10           #distance:J
    .end local v12           #isRtc:Z
    .end local v13           #nextAlarmWhen:J
    .end local v15           #skew:J
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .restart local v8       #curTimeSkew:J
    .restart local v12       #isRtc:Z
    :cond_8
    move-wide v15, v8

    .line 1749
    goto/16 :goto_1

    .restart local v3       #a:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10       #distance:J
    .restart local v13       #nextAlarmWhen:J
    .restart local v15       #skew:J
    :cond_9
    move-wide/from16 v17, v8

    .line 1757
    goto/16 :goto_2

    .line 1766
    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 1767
    .local v5, bigTemp:Ljava/math/BigInteger;
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1768
    .local v4, bigGcd:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    goto/16 :goto_3

    .end local v4           #bigGcd:Ljava/math/BigInteger;
    .end local v5           #bigTemp:Ljava/math/BigInteger;
    :cond_b
    move-wide/from16 v17, v8

    .line 1776
    goto/16 :goto_4

    .line 1796
    .end local v3           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v13, v17

    div-long v6, v17, v10

    .line 1797
    .restart local v6       #count:J
    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    .line 1798
    mul-long v17, v10, v6

    sub-long v17, v13, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_5

    .line 1802
    .end local v6           #count:J
    :cond_d
    const-string v17, "AlarmManager"

    const-string v18, " next == Long.MAX_VALUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .locals 8
    .parameter "interval_old"
    .parameter "interval_new"

    .prologue
    .line 1705
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1706
    .local v1, newRepeatInterval:Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1707
    .local v2, oldIntervalGcd:Ljava/math/BigInteger;
    move-object v0, v2

    .line 1708
    .local v0, newIntervalGcd:Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1712
    .local v3, tempIntervalGcd:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1713
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1714
    move-object v0, v3

    .line 1718
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z
    .locals 7
    .parameter
    .parameter "operation"
    .parameter "triggerAtTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            "J)Z"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 1871
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return v2

    .line 1876
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1878
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1879
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1880
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 1883
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, targetPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1891
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1912
    :cond_0
    :goto_0
    return v3

    .line 1896
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1898
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1899
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1901
    .local v2, targetPackage:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    .line 1902
    goto :goto_0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PatternSyntaxException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1907
    .end local v0           #e:Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v0

    .line 1908
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private queryAccounts()V
    .locals 13

    .prologue
    .line 1934
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1935
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1937
    .local v0, ads:[Landroid/accounts/AuthenticatorDescription;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1938
    :try_start_0
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1939
    move-object v2, v0

    .local v2, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 1940
    .local v3, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 1941
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1946
    .end local v3           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v9, :cond_4

    .line 1947
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1948
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1949
    .local v7, pC:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1963
    .end local v2           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #pC:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1951
    .restart local v2       #arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #len$:I
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1952
    .local v6, pA:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1954
    .end local v6           #pA:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1955
    .local v8, pT:Ljava/lang/String;
    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<TargetPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1959
    .end local v8           #pT:Ljava/lang/String;
    .local v4, i$:I
    :cond_4
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1960
    .restart local v6       #pA:Ljava/lang/String;
    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<AccPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1963
    .end local v6           #pA:Ljava/lang/String;
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1964
    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .locals 21

    .prologue
    .line 1722
    const-wide/32 v11, 0xdbba00

    .line 1723
    .local v11, newIntervalGcd:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1725
    .local v4, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_5

    .line 1726
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1727
    .local v5, almListSize:I
    if-lez v5, :cond_4

    .line 1728
    const/4 v8, 0x0

    .line 1729
    .local v8, i:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1730
    .local v13, nowRtc:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v6, v17, v19

    .local v6, curTimeSkew:J
    move v9, v8

    .line 1731
    .end local v8           #i:I
    .local v9, i:I
    :goto_0
    if-ge v9, v5, :cond_4

    .line 1732
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1733
    .local v3, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    const/4 v10, 0x1

    .line 1734
    .local v10, isRtc:Z
    :goto_1
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    if-eqz v10, :cond_3

    const-wide/16 v17, 0x0

    :goto_2
    add-long v15, v19, v17

    .line 1735
    .local v15, when:J
    cmp-long v17, v13, v15

    if-gez v17, :cond_1

    .line 1736
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v11

    :cond_1
    move v9, v8

    .line 1738
    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .line 1733
    .end local v9           #i:I
    .end local v10           #isRtc:Z
    .end local v15           #when:J
    .restart local v8       #i:I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #isRtc:Z
    :cond_3
    move-wide/from16 v17, v6

    .line 1734
    goto :goto_2

    .line 1740
    .end local v3           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6           #curTimeSkew:J
    .end local v8           #i:I
    .end local v10           #isRtc:Z
    .end local v13           #nowRtc:J
    :cond_4
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1741
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " GCD_NEW("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    .end local v5           #almListSize:I
    :cond_5
    return-void
.end method


# virtual methods
.method public getActiveEmailAccountsCount()J
    .locals 7

    .prologue
    .line 2045
    const/4 v2, 0x0

    .line 2046
    .local v2, numEmailAccount:I
    const/4 v0, 0x0

    .line 2047
    .local v0, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2048
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 2049
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0

    .line 2052
    :cond_0
    int-to-long v3, v2

    return-wide v3

    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_1
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1967
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->queryAccounts()V

    .line 1970
    :cond_0
    return-void
.end method

.method public removeRepeatingAlarmLocked(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1920
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1922
    :cond_0
    return-void
.end method

.method public removeRepeatingAlarmLocked(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1929
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1931
    :cond_0
    return-void
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 30
    .parameter "alarm"

    .prologue
    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z

    move-result v20

    .line 1606
    .local v20, isNonAdjustableAlarm:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1608
    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 1611
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x493e0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0xdbba00

    cmp-long v26, v26, v28

    if-gtz v26, :cond_2

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1621
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v28

    rem-long v26, v26, v28

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_1

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1684
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1685
    .local v8, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v8, :cond_b

    .line 1686
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1687
    .local v9, almListSize:I
    if-lez v9, :cond_b

    .line 1688
    const/16 v18, 0x0

    .line 1689
    .local v18, i:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v10, v26, v28

    .local v10, curTimeSkew:J
    move/from16 v19, v18

    .line 1690
    .end local v18           #i:I
    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v9, :cond_a

    .line 1691
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1692
    .local v7, a:Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 1693
    .local v24, time:Landroid/text/format/Time;
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    move-wide/from16 v26, v10

    :goto_2
    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1694
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v25

    .line 1695
    .local v25, timeStr:Ljava/lang/String;
    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v28, v18, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " (T:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", INT:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v18

    .line 1696
    .end local v18           #i:I
    .restart local v19       #i:I
    goto/16 :goto_1

    .line 1629
    .end local v7           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9           #almListSize:I
    .end local v10           #curTimeSkew:J
    .end local v19           #i:I
    .end local v24           #time:Landroid/text/format/Time;
    .end local v25           #timeStr:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    goto/16 :goto_0

    .line 1632
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_0

    .line 1635
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1637
    .local v22, now:J
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    sub-long v14, v26, v22

    .line 1638
    .local v14, distanceToAlarm:J
    const-wide/32 v26, 0x325aa0

    cmp-long v26, v14, v26

    if-ltz v26, :cond_5

    const-wide/32 v5, 0xea60

    .line 1639
    .local v5, SYNC_TOLERANCE_VALUE:J
    :goto_4
    long-to-double v0, v14

    move-wide/from16 v26, v0

    long-to-double v0, v5

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    mul-long v16, v26, v5

    .line 1642
    .local v16, distanceToAlarmRounded:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.android.email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->getActiveEmailAccountsCount()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_6

    .line 1644
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v26

    if-eqz v26, :cond_3

    const-string v26, "AlarmManager"

    const-string v27, " Email : 1 active account"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_3
    :goto_5
    const-wide/32 v26, 0xdbba00

    cmp-long v26, v16, v26

    if-gtz v26, :cond_0

    const-wide/32 v26, 0x493e0

    cmp-long v26, v16, v26

    if-ltz v26, :cond_0

    const-wide/32 v26, 0x493e0

    rem-long v26, v16, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_0

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1672
    new-instance v21, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 1673
    .local v21, newAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 1674
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1675
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    .line 1676
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1677
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_0

    .line 1635
    .end local v5           #SYNC_TOLERANCE_VALUE:J
    .end local v14           #distanceToAlarm:J
    .end local v16           #distanceToAlarmRounded:J
    .end local v21           #newAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v22           #now:J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    goto/16 :goto_3

    .line 1638
    .restart local v14       #distanceToAlarm:J
    .restart local v22       #now:J
    :cond_5
    const-wide/16 v5, 0x2710

    goto/16 :goto_4

    .line 1646
    .restart local v5       #SYNC_TOLERANCE_VALUE:J
    .restart local v16       #distanceToAlarmRounded:J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-eqz v26, :cond_b

    .line 1647
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 1648
    .local v12, differenceBwAlarmsOfEmail:J
    const-wide/16 v26, 0x1388

    cmp-long v26, v12, v26

    if-gtz v26, :cond_3

    .line 1649
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Email : Detected ID("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->getRepeatInterval()J

    move-result-wide v16

    goto/16 :goto_5

    .line 1657
    .end local v12           #differenceBwAlarmsOfEmail:J
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.google.android.gsf"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1659
    const-wide/32 v26, 0x124f80

    cmp-long v26, v16, v26

    if-lez v26, :cond_3

    .line 1660
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x41224f8000000000L

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x927c0

    mul-long v16, v26, v28

    goto/16 :goto_5

    .line 1693
    .end local v5           #SYNC_TOLERANCE_VALUE:J
    .end local v14           #distanceToAlarm:J
    .end local v16           #distanceToAlarmRounded:J
    .end local v22           #now:J
    .restart local v7       #a:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8       #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v9       #almListSize:I
    .restart local v10       #curTimeSkew:J
    .restart local v18       #i:I
    .restart local v24       #time:Landroid/text/format/Time;
    :cond_9
    const-wide/16 v26, 0x0

    goto/16 :goto_2

    .line 1697
    .end local v7           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18           #i:I
    .end local v24           #time:Landroid/text/format/Time;
    .restart local v19       #i:I
    :cond_a
    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " GCD("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "):"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v8           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9           #almListSize:I
    .end local v10           #curTimeSkew:J
    .end local v19           #i:I
    :cond_b
    return-void
.end method

.method public timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 25
    .parameter "interval"

    .prologue
    .line 1807
    const-wide v13, 0x7fffffffffffffffL

    .line 1808
    .local v13, nextAlarm:J
    const-wide v15, 0x7fffffffffffffffL

    .line 1809
    .local v15, nextAlarmWithSameInterval:J
    const/4 v4, 0x0

    .line 1810
    .local v4, alarmResult:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    .line 1812
    .local v5, alarmResultWithSameInterval:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1813
    .local v3, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v3, :cond_a

    .line 1814
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1815
    .local v6, almListSize:I
    if-lez v6, :cond_a

    .line 1816
    const/4 v11, 0x0

    .line 1817
    .local v11, j:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1818
    .local v17, nowRtc:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v7, v21, v23

    .line 1819
    .local v7, curTimeSkew:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    cmp-long v21, p1, v21

    if-nez v21, :cond_2

    const/4 v9, 0x1

    .local v9, isIntSameAsGcd:Z
    :goto_0
    move v12, v11

    .line 1821
    .end local v11           #j:I
    .local v12, j:I
    :goto_1
    if-ge v12, v6, :cond_a

    .line 1822
    add-int/lit8 v11, v12, 0x1

    .end local v12           #j:I
    .restart local v11       #j:I
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1823
    .local v2, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 1824
    .local v10, isRtc:Z
    :goto_2
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v23, v0

    if-eqz v10, :cond_4

    const-wide/16 v21, 0x0

    :goto_3
    add-long v19, v23, v21

    .line 1825
    .local v19, when:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    add-long v21, v21, v19

    cmp-long v21, v17, v21

    if-gez v21, :cond_9

    .line 1827
    if-eqz v9, :cond_5

    .line 1828
    cmp-long v21, v19, v13

    if-gez v21, :cond_1

    .line 1829
    move-wide/from16 v13, v19

    .line 1830
    move-object v4, v2

    :cond_1
    :goto_4
    move v12, v11

    .line 1859
    .end local v11           #j:I
    .restart local v12       #j:I
    goto :goto_1

    .line 1819
    .end local v2           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9           #isIntSameAsGcd:Z
    .end local v10           #isRtc:Z
    .end local v12           #j:I
    .end local v19           #when:J
    .restart local v11       #j:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 1823
    .restart local v2       #a:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v9       #isIntSameAsGcd:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .restart local v10       #isRtc:Z
    :cond_4
    move-wide/from16 v21, v7

    .line 1824
    goto :goto_3

    .line 1835
    .restart local v19       #when:J
    :cond_5
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_1

    .line 1836
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-nez v21, :cond_6

    .line 1837
    cmp-long v21, v19, v15

    if-gez v21, :cond_1

    .line 1838
    move-wide/from16 v15, v19

    .line 1839
    move-object v5, v2

    goto :goto_4

    .line 1842
    :cond_6
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-lez v21, :cond_7

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v21, p1

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_8

    :cond_7
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-gez v21, :cond_1

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, p1, v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_1

    .line 1844
    :cond_8
    cmp-long v21, v19, v13

    if-gez v21, :cond_1

    .line 1845
    move-wide/from16 v13, v19

    .line 1846
    move-object v4, v2

    goto :goto_4

    .line 1854
    :cond_9
    const-wide/32 v21, 0x2932e00

    add-long v21, v21, v19

    cmp-long v21, v21, v17

    if-gez v21, :cond_1

    .line 1855
    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1856
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_4

    .line 1864
    .end local v2           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6           #almListSize:I
    .end local v7           #curTimeSkew:J
    .end local v9           #isIntSameAsGcd:Z
    .end local v10           #isRtc:Z
    .end local v11           #j:I
    .end local v17           #nowRtc:J
    .end local v19           #when:J
    :cond_a
    if-eqz v5, :cond_b

    move-object v4, v5

    .line 1866
    :cond_b
    return-object v4
.end method

.method public updateEmailSyncStatusLocked(JJ[J)V
    .locals 23
    .parameter "curAccountd"
    .parameter "alarmTriggerTime"
    .parameter "emailAccountInfos"

    .prologue
    .line 2056
    const/4 v11, 0x0

    .line 2057
    .local v11, accountInfoIndex:I
    move-object/from16 v0, p5

    array-length v13, v0

    .line 2058
    .local v13, accountInfoLimit:I
    const/4 v10, 0x2

    .line 2061
    .local v10, ACCOUNT_INFO_UNIT_LENGTH:I
    const/4 v11, 0x0

    .line 2062
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    .line 2063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v12, v11, 0x1

    .end local v11           #accountInfoIndex:I
    .local v12, accountInfoIndex:I
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    .line 2064
    .local v2, eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v21, -0x1

    cmp-long v3, v8, v21

    if-eqz v3, :cond_2

    .line 2065
    const/16 v18, 0x0

    .line 2066
    .local v18, found:Z
    const/4 v14, 0x0

    .line 2067
    .local v14, aii:I
    :goto_1
    div-int/lit8 v3, v13, 0x2

    if-ge v14, v3, :cond_1

    .line 2068
    add-int/lit8 v15, v14, 0x1

    .end local v14           #aii:I
    .local v15, aii:I
    mul-int/lit8 v3, v14, 0x2

    aget-wide v4, p5, v3

    .line 2069
    .local v4, accountId:J
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    const/16 v18, 0x1

    :cond_0
    move v14, v15

    .line 2070
    .end local v15           #aii:I
    .restart local v14       #aii:I
    goto :goto_1

    .line 2071
    .end local v4           #accountId:J
    :cond_1
    if-nez v18, :cond_2

    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3400(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V

    .end local v14           #aii:I
    .end local v18           #found:Z
    :cond_2
    move v11, v12

    .line 2073
    .end local v12           #accountInfoIndex:I
    .restart local v11       #accountInfoIndex:I
    goto :goto_0

    .line 2075
    .end local v2           #eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    :cond_3
    const/4 v11, 0x0

    .line 2076
    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move v12, v11

    .line 2077
    .end local v11           #accountInfoIndex:I
    .restart local v12       #accountInfoIndex:I
    :cond_4
    :goto_2
    if-ge v12, v13, :cond_d

    .line 2078
    add-int/lit8 v11, v12, 0x1

    .end local v12           #accountInfoIndex:I
    .restart local v11       #accountInfoIndex:I
    aget-wide v4, p5, v12

    .line 2079
    .restart local v4       #accountId:J
    add-int/lit8 v12, v11, 0x1

    .end local v11           #accountInfoIndex:I
    .restart local v12       #accountInfoIndex:I
    aget-wide v6, p5, v11

    .line 2083
    .local v6, prevSync:J
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_4

    .line 2085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-ltz v3, :cond_b

    .line 2087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2088
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    if-ge v3, v8, :cond_5

    .line 2089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2091
    :cond_5
    new-instance v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V

    .line 2092
    .restart local v2       #eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2099
    :goto_4
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_6

    .line 2100
    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3500(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V

    .line 2105
    :cond_6
    const-wide/16 v19, 0x0

    .line 2106
    .local v19, newInterval:J
    cmp-long v3, p1, v4

    if-nez v3, :cond_c

    .line 2107
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x1

    add-long v8, v8, v21

    iput-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    .line 2109
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v21, 0x1

    cmp-long v3, v8, v21

    if-ltz v3, :cond_9

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x2

    cmp-long v3, v8, v21

    if-ltz v3, :cond_9

    .line 2110
    sub-long v8, p3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 2111
    .local v16, distance:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_7
    move-wide/from16 v0, v16

    long-to-double v8, v0

    const-wide v21, 0x40c7700000000000L

    div-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    const-wide/16 v21, 0x2ee0

    mul-long v16, v8, v21

    .line 2115
    const-wide/32 v8, 0x493e0

    cmp-long v3, v16, v8

    if-ltz v3, :cond_9

    const-wide/32 v8, 0x493e0

    rem-long v8, v16, v8

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-nez v3, :cond_9

    .line 2117
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_8
    move-wide/from16 v19, v16

    .line 2127
    .end local v16           #distance:J
    :cond_9
    :goto_5
    move-wide/from16 v0, v19

    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V
    invoke-static {v2, v6, v7, v0, v1}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V

    .line 2130
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-lez v3, :cond_a

    .line 2131
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    cmp-long v3, v8, v21

    if-gez v3, :cond_a

    .line 2132
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_a

    .line 2133
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    .line 2134
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    .line 2135
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mEmailIdForNextSync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEmailNextSyncTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2095
    .end local v2           #eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .end local v19           #newInterval:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    .restart local v2       #eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    goto/16 :goto_4

    .line 2123
    .restart local v19       #newInterval:J
    :cond_c
    const-wide/16 v19, 0x0

    goto/16 :goto_5

    .line 2144
    .end local v2           #eai:Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    .end local v4           #accountId:J
    .end local v6           #prevSync:J
    .end local v19           #newInterval:J
    :cond_d
    return-void
.end method
