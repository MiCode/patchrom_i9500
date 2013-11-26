.class Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;
.super Ljava/lang/Object;
.source "TwGLModeDescription.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->hideDescription()V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Z)Z

    .line 56
    return-void
.end method
