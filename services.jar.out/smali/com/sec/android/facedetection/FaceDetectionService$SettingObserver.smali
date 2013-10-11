.class Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->bStay:Z
    invoke-static {v3, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$002(Lcom/sec/android/facedetection/FaceDetectionService;Z)Z

    .line 209
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->bRotation:Z
    invoke-static {v3, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$202(Lcom/sec/android/facedetection/FaceDetectionService;Z)Z

    .line 211
    const-string v0, "FaceDetectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting changed bStay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->bStay:Z
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->bRotation:Z
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$200(Lcom/sec/android/facedetection/FaceDetectionService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;
    invoke-static {v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->bStay:Z
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->bRotation:Z
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$200(Lcom/sec/android/facedetection/FaceDetectionService;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->onSettingChanged(Z)V

    .line 214
    return-void

    :cond_2
    move v0, v2

    .line 208
    goto :goto_0

    :cond_3
    move v0, v2

    .line 209
    goto :goto_1
.end method
