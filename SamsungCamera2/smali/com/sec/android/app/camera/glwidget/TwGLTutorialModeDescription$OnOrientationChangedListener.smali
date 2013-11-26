.class Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;
.super Ljava/lang/Object;
.source "TwGLTutorialModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    .line 208
    :cond_0
    return-void
.end method
