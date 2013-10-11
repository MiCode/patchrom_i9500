.class Lcom/android/server/am/AppStateBroadcaster;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppStateBroadcaster$1;,
        Lcom/android/server/am/AppStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field private static final APP_TERM_REASONS:[Ljava/lang/String; = null

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x1

.field public static final STOP_REASON_USER_HALT:I

.field private static instance:Lcom/android/server/am/AppStateBroadcaster;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "USER_HALTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NORMAL_SYSTEM_HALT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ANR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CRASH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppStateBroadcaster$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private BroadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"
    .parameter "appState"
    .parameter "termReason"

    .prologue
    .line 118
    const-string v2, "EXITED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    .local v1, isExitedState:Z
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    .line 122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, appStateIntent:Landroid/content/Intent;
    const-string v2, "ApplicationPackageName"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "ApplicationState"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    if-eqz v1, :cond_1

    .line 126
    const-string v2, "ApplicationTermReason"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_1
    const-string v2, "com.carrieriq.tmobile"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    .end local v0           #appStateIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public static SendApplicationFocusGain(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    const-string v1, "FOCUS_GAIN"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->BroadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static SendApplicationFocusLoss(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 40
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    const-string v1, "FOCUS_LOSS"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->BroadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static SendApplicationStart(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->BroadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static SendApplicationStop(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "stopReason"

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 52
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    const-string v1, "EXITED"

    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->BroadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/am/AppStateBroadcaster;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppStateBroadcaster;)Lcom/android/server/am/AppStateBroadcaster;
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->instance:Lcom/android/server/am/AppStateBroadcaster;

    return-object p0
.end method
