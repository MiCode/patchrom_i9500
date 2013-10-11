.class Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceIndicator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetectionService.Indicator"


# instance fields
.field bEnabled:Z

.field bOpened:Z

.field private mContext:Landroid/content/Context;

.field private mDimmedIconId:I

.field private mNormalIconId:I

.field private mService:Landroid/app/StatusBarManager;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mContext:Landroid/content/Context;

    .line 159
    const v0, 0x108069f

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mNormalIconId:I

    .line 160
    const v0, 0x108069e

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    .line 165
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mDimmedIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    iget v2, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mNormalIconId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->mService:Landroid/app/StatusBarManager;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onCameraStatusChanged(Z)V
    .locals 1
    .parameter "opened"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bOpened:Z

    .line 176
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->bEnabled:Z

    .line 170
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
