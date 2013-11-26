.class Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$1;
.super Ljava/util/TimerTask;
.source "TwGLAutoPortraitMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->startDetect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->onSpeakGuideTTS()V

    .line 183
    return-void
.end method
