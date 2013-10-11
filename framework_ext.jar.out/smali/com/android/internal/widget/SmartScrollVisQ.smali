.class public Lcom/android/internal/widget/SmartScrollVisQ;
.super Ljava/lang/Object;
.source "SmartScrollVisQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;
    }
.end annotation


# static fields
.field private static final DETECT_IN_PROGRESS:I = 0x0

.field private static final GUIDE_DIRECTION_CLOSE:I = 0x8

.field private static final GUIDE_DIRECTION_DOWN:I = 0x0

.field private static final GUIDE_DIRECTION_LEFT:I = 0x6

.field private static final GUIDE_DIRECTION_LEFT_DOWN:I = 0x7

.field private static final GUIDE_DIRECTION_LEFT_UP:I = 0x5

.field private static final GUIDE_DIRECTION_OK:I = 0x9

.field private static final GUIDE_DIRECTION_RIGHT:I = 0x2

.field private static final GUIDE_DIRECTION_RIGHT_DOWN:I = 0x1

.field private static final GUIDE_DIRECTION_RIGHT_UP:I = 0x3

.field private static final GUIDE_DIRECTION_UP:I = 0x4

.field private static final NO_DETECTION:I = 0x2

.field private static final SHAKING:I = 0x3

.field private static final STOP_ALL_ANIM:I = 0xb

.field private static final STOP_INIT_COMPLETE:I = 0xa

.field private static final TRACKING:I = 0x1


# instance fields
.field final ANIM_HEIGHT:I

.field final ANIM_WIDTH:I

.field final DEBUG:Z

.field final TAG:Ljava/lang/String;

.field failAnim1:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim2:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim3:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim4:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim5:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim6:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim7:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim8:Landroid/graphics/drawable/AnimationDrawable;

.field failAnim9:Landroid/graphics/drawable/AnimationDrawable;

.field failAnimView1:Landroid/widget/ImageView;

.field failAnimView2:Landroid/widget/ImageView;

.field failAnimView3:Landroid/widget/ImageView;

.field failAnimView4:Landroid/widget/ImageView;

.field failAnimView5:Landroid/widget/ImageView;

.field failAnimView6:Landroid/widget/ImageView;

.field failAnimView7:Landroid/widget/ImageView;

.field failAnimView8:Landroid/widget/ImageView;

.field failAnimView9:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private final mDetectedQ:Ljava/lang/Object;

.field mFManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private final mFailAnimQ:Ljava/lang/Object;

.field mInitAnim1:Landroid/graphics/drawable/AnimationDrawable;

.field mInitAnimView1:Landroid/widget/ImageView;

.field private final mInitQ:Ljava/lang/Object;

.field mPrevDirection:I

.field mPrevStatus:I

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field mShowingDetectedQ:Z

.field mShowingInitQ:Z

.field private mShowingStartQ:Z

.field mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

.field private final mStartQ:Ljava/lang/Object;

.field mVisQEnabled:Z

.field mWindowManager:Landroid/view/WindowManager;

.field startImageView:Landroid/widget/ImageView;

.field successImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 9
    .parameter "context"
    .parameter "wm"

    .prologue
    const/16 v8, 0x1e9

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    .line 51
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    .line 54
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    .line 59
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFailAnimQ:Ljava/lang/Object;

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingDetectedQ:Z

    .line 63
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mDetectedQ:Ljava/lang/Object;

    .line 66
    iput-boolean v5, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingStartQ:Z

    .line 67
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mStartQ:Ljava/lang/Object;

    .line 71
    iput-boolean v5, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingInitQ:Z

    .line 72
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitQ:Ljava/lang/Object;

    .line 74
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    .line 76
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    .line 77
    iput-object v6, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 78
    iput-boolean v5, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mVisQEnabled:Z

    .line 79
    const-string v3, "SmartScrollVisQ"

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->TAG:Ljava/lang/String;

    .line 80
    iput-boolean v5, p0, Lcom/android/internal/widget/SmartScrollVisQ;->DEBUG:Z

    .line 82
    iput v7, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    .line 83
    iput v7, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    .line 85
    iput v8, p0, Lcom/android/internal/widget/SmartScrollVisQ;->ANIM_HEIGHT:I

    .line 86
    iput v8, p0, Lcom/android/internal/widget/SmartScrollVisQ;->ANIM_WIDTH:I

    .line 482
    new-instance v3, Lcom/android/internal/widget/SmartScrollVisQ$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SmartScrollVisQ$2;-><init>(Lcom/android/internal/widget/SmartScrollVisQ;)V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;

    .line 516
    new-instance v3, Lcom/android/internal/widget/SmartScrollVisQ$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SmartScrollVisQ$3;-><init>(Lcom/android/internal/widget/SmartScrollVisQ;)V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    const-string v3, "SmartScrollVisQ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmartScrollVisQ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    .line 92
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;-><init>(Lcom/android/internal/widget/SmartScrollVisQ;)V

    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    .line 96
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "smart_scroll"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "smart_scroll_visual_feedback_icon"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "smart_scroll_visual_feedback_icon"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mVisQEnabled:Z

    .line 104
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    if-nez v3, :cond_1

    .line 105
    const-string v3, "SmartScrollVisQ"

    const-string v4, "mWindowManager cannot be null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->InitAll()V

    .line 109
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->InitFManager()V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, filter1:Landroid/content/IntentFilter;
    const-string v3, "com.sec.visq.start"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v3, "com.sec.visq.stop"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v2, filter3:Landroid/content/IntentFilter;
    const-string v3, "com.sec.startq"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void

    .end local v0           #filter1:Landroid/content/IntentFilter;
    .end local v1           #filter2:Landroid/content/IntentFilter;
    .end local v2           #filter3:Landroid/content/IntentFilter;
    :cond_2
    move v3, v5

    .line 102
    goto :goto_0
.end method

.method private InitFManager()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "SmartScrollVisQ"

    const-string v1, "mFManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    new-instance v1, Lcom/android/internal/widget/SmartScrollVisQ$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SmartScrollVisQ$1;-><init>(Lcom/android/internal/widget/SmartScrollVisQ;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SmartScrollVisQ;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V

    return-void
.end method

.method private hideDelayedDetectedQ()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    return-void
.end method

.method private hideImmediateDetectedQ()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    return-void
.end method

.method private hideInitQ()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitQ:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingInitQ:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnimView1:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingInitQ:Z

    .line 278
    :cond_0
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideStartQ()V
    .locals 3

    .prologue
    .line 239
    const-string v0, "SmartScrollVisQ"

    const-string v1, "hideStartQ"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mStartQ:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingStartQ:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->startImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingStartQ:Z

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showDetectedQ()V
    .locals 10

    .prologue
    .line 282
    iget-object v9, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mDetectedQ:Ljava/lang/Object;

    monitor-enter v9

    .line 283
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingDetectedQ:Z

    if-nez v1, :cond_0

    .line 284
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1e9

    const/16 v2, 0x1e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->successImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingDetectedQ:Z

    .line 300
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideDelayedDetectedQ()V

    .line 302
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    monitor-exit v9

    .line 303
    :goto_0
    return-void

    .line 294
    .restart local v0       #mParams:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v8

    .line 295
    .local v8, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "SmartScrollVisQ"

    const-string v2, "BadTokenException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v9

    goto :goto_0

    .line 302
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private showInitQ()V
    .locals 10

    .prologue
    .line 249
    iget-object v9, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitQ:Ljava/lang/Object;

    monitor-enter v9

    .line 250
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingInitQ:Z

    if-nez v1, :cond_0

    .line 251
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1e9

    const/16 v2, 0x1e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnimView1:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingInitQ:Z

    .line 268
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    monitor-exit v9

    .line 269
    :goto_0
    return-void

    .line 261
    .restart local v0       #mParams:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v8

    .line 262
    .local v8, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "SmartScrollVisQ"

    const-string v2, "BadTokenException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v9

    goto :goto_0

    .line 268
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private showStartQ()V
    .locals 10

    .prologue
    .line 214
    const-string v1, "SmartScrollVisQ"

    const-string v2, "showStartQ"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v9, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mStartQ:Ljava/lang/Object;

    monitor-enter v9

    .line 216
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingStartQ:Z

    if-nez v1, :cond_0

    .line 218
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1e9

    const/16 v2, 0x1e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->startImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingStartQ:Z

    .line 235
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    monitor-exit v9

    .line 236
    :goto_0
    return-void

    .line 228
    .restart local v0       #mParams:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v8

    .line 229
    .local v8, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "SmartScrollVisQ"

    const-string v2, "BadTokenException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit v9

    goto :goto_0

    .line 235
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private stopAllFailAnim()V
    .locals 3

    .prologue
    .line 431
    const-string v0, "SmartScrollVisQ"

    const-string v1, "stopAllFailAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFailAnimQ:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView1:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView2:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView3:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView4:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 455
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView5:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 460
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView6:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView7:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 468
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView8:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 473
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView9:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 477
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    .line 480
    return-void

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public InitAll()V
    .locals 4

    .prologue
    .line 199
    const-string v1, "SmartScrollVisQ"

    const-string v2, "InitAll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    .line 202
    .local v0, c:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnimView1:Landroid/widget/ImageView;

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnimView1:Landroid/widget/ImageView;

    const v2, 0x10806cb

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnimView1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mInitAnim1:Landroid/graphics/drawable/AnimationDrawable;

    .line 206
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->successImageView:Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->successImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10806cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->startImageView:Landroid/widget/ImageView;

    .line 210
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->startImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10806cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method

.method public removeSmartScrollVisQ()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v0, "SmartScrollVisQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSmartScrollVisQ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    iput-object v3, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mSmartScrollObserver:Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;

    .line 140
    :cond_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "direction"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    if-eq p2, v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    .line 172
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V

    .line 174
    iput p2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    .line 175
    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SmartScrollVisQ;->startFailAnimQ(I)V

    .line 196
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    .line 180
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V

    .line 183
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->showDetectedQ()V

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V

    .line 190
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V

    .line 192
    invoke-direct {p0}, Lcom/android/internal/widget/SmartScrollVisQ;->showInitQ()V

    goto :goto_0

    .line 194
    :cond_3
    const-string v0, "SmartScrollVisQ"

    const-string v1, "Wrong status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFailAnimQ(I)V
    .locals 11
    .parameter "direction"

    .prologue
    .line 314
    const-string v1, "SmartScrollVisQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFailAnimQ direction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v10, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mFailAnimQ:Ljava/lang/Object;

    monitor-enter v10

    .line 316
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    .line 318
    .local v8, c:Landroid/content/Context;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1e9

    const/16 v2, 0x1e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 327
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 427
    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_1
    return-void

    .line 329
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView1:Landroid/widget/ImageView;

    .line 331
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView1:Landroid/widget/ImageView;

    const v2, 0x10806ab

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView1:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v9

    .line 422
    .local v9, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_2
    const-string v1, "SmartScrollVisQ"

    const-string v2, "BadTokenException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    .line 424
    monitor-exit v10

    goto :goto_1

    .line 427
    .end local v0           #mParams:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #c:Landroid/content/Context;
    .end local v9           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 339
    .restart local v0       #mParams:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #c:Landroid/content/Context;
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_1

    .line 340
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView2:Landroid/widget/ImageView;

    .line 341
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView2:Landroid/widget/ImageView;

    const v2, 0x10806b1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 342
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView2:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_2

    .line 350
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView3:Landroid/widget/ImageView;

    .line 351
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView3:Landroid/widget/ImageView;

    const v2, 0x10806b4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView3:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 355
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView3:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 359
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_3

    .line 360
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView4:Landroid/widget/ImageView;

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView4:Landroid/widget/ImageView;

    const v2, 0x10806b9

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView4:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 365
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView4:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 369
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_4

    .line 370
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView5:Landroid/widget/ImageView;

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView5:Landroid/widget/ImageView;

    const v2, 0x10806bc

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 372
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView5:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 375
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView5:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 379
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_5

    .line 380
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView6:Landroid/widget/ImageView;

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView6:Landroid/widget/ImageView;

    const v2, 0x10806bf

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 382
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView6:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    .line 384
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim6:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 385
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView6:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 389
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_6

    .line 390
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView7:Landroid/widget/ImageView;

    .line 391
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView7:Landroid/widget/ImageView;

    const v2, 0x10806c2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    .line 394
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim7:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 395
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView7:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 399
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_7

    .line 400
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView8:Landroid/widget/ImageView;

    .line 401
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView8:Landroid/widget/ImageView;

    const v2, 0x10806c5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView8:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    .line 404
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim8:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 405
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView8:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 409
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_8

    .line 410
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView9:Landroid/widget/ImageView;

    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView9:Landroid/widget/ImageView;

    const v2, 0x10806c8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 412
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView9:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    .line 414
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnim9:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 415
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ;->failAnimView9:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
