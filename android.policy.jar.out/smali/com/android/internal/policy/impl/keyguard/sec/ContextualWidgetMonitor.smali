.class public Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field private static final DBG:Z = true

.field private static final MSG_MISSED_EVENT_ADDED:I = 0x12c0

.field private static final MSG_MISSED_EVENT_REMOVED:I = 0x12ca

.field private static final MSG_MUSIC_WIDGET_ADDED:I = 0x12d4

.field private static final MSG_MUSIC_WIDGET_REMOVED:I = 0x12de

.field private static final MSG_REMOTE_WIDGET_ADDED:I = 0x12e8

.field private static final MSG_REMOTE_WIDGET_REMOVED:I = 0x12f2

.field private static final MSG_SEC_MUSIC_WIDGET_ADDED:I = 0x12fc

.field private static final MSG_SEC_MUSIC_WIDGET_REMOVED:I = 0x1306

.field private static final TAG:Ljava/lang/String; = "ContexualWidgetMonitor"

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    .line 71
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    .line 73
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    .line 75
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    .line 77
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 79
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 81
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    .line 83
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    .line 85
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    .line 87
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    .line 115
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    .line 214
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 446
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    .line 448
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    .line 217
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    .line 218
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 220
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    .line 222
    new-instance v3, Landroid/appwidget/AppWidgetHost;

    const v4, 0x4b455947

    invoke-direct {v3, p1, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 223
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 227
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10408c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10408c9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    .line 232
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10408ca

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10408cb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    .line 237
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10408cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10408cd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    .line 242
    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x10408d2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10408d3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v1, pkgFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 326
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .locals 7
    .parameter "widgetComponentName"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v2

    .line 396
    .local v2, widgetId:I
    if-eqz v2, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    .line 399
    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 425
    :goto_0
    return-void

    .line 402
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 408
    .local v0, contextualWidgetId:I
    if-nez v0, :cond_2

    .line 409
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 411
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 421
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ContexualWidgetMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when trying to bind default AppWidget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 366
    .local v0, contextualWidgetIds:[I
    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 371
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    aget v3, v0, v1

    goto :goto_0

    .line 368
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
    .locals 1
    .parameter "context"

    .prologue
    .line 295
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    .line 298
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    .line 381
    .local v1, widgetIds:[I
    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v3

    .line 383
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 385
    .local v2, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    aget v3, v1, v0

    goto :goto_0

    .line 383
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleMissedEventUpdate()V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleMusicWidgetUpdate(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .locals 1
    .parameter "added"

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private removeContextualWidget(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 345
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "widgetComponentName"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    .line 430
    .local v0, alreadyAddedWidgetId:I
    if-eqz v0, :cond_0

    .line 431
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    .line 437
    .local v1, widgetId:I
    if-eqz v1, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 439
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    :cond_1
    return-void
.end method


# virtual methods
.method public getTargetWidgetId()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    return v0
.end method

.method public isMissedEvent()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, mNM:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 313
    .local v0, CallNotiInfo:Landroid/app/NotificationInfo;
    const/4 v1, 0x0

    .line 315
    .local v1, MsgNotiInfo:Landroid/app/NotificationInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 316
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mNM:Landroid/app/NotificationManager;
    check-cast v2, Landroid/app/NotificationManager;

    .line 317
    .restart local v2       #mNM:Landroid/app/NotificationManager;
    const-string v5, "com.android.phone"

    invoke-virtual {v2, v5, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 318
    const-string v5, "com.android.mms"

    const/16 v6, 0x7b

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 322
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 307
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 303
    return-void
.end method
