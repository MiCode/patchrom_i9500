.class Lcom/sec/android/glview/TwGLButton$3;
.super Ljava/lang/Object;
.source "TwGLButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLButton;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton$3;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$3;->this$0:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLButton;->access$000(Lcom/sec/android/glview/TwGLButton;Z)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$3;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 125
    return-void
.end method
